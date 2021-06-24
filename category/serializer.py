
from rest_framework import serializers
from .models import Category
from rest_framework_recursive.fields import RecursiveField


class DynamicFieldsModelSerializer(serializers.ModelSerializer):
    """
    A ModelSerializer that takes an additional `exclude_fields` argument that
    controls which fields should be displayed.
    """    
    def __init__(self, *args, **kwargs):
        # Don't pass the 'fields' arg up to the superclass
        exclude_fields = kwargs.pop('exclude_fields', None)

        # Instantiate the superclass normally
        super(DynamicFieldsModelSerializer, self).__init__(*args, **kwargs)

        if exclude_fields is not None:
            # Drop excluded field from fields
            for field_name in exclude_fields:
                self.fields.pop(field_name)
                
       
        
            

class CategorySerializer(DynamicFieldsModelSerializer):
    
    children = RecursiveField(many=True, read_only=True)
    class Meta:
        model = Category
        fields = ['id','parent', 'children', 'slug', 'name', 'display_name', 'image_path', 'is_featured']
        
    
    def create(self, validated_data):
        return Category.objects.create(**validated_data)
    
    def update(self, instance, validated_data):
        instance.name = validated_data.get('name', instance.name)
        instance.description = validated_data.get('description', instance.description)
        instance.save()
        return instance