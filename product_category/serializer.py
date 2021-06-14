
from rest_framework import serializers
from .models import ProductCategory
from product.serializer import ProductSerializer

class ProductCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductCategory
        fields = ['name', 'description', 'id', 'slug']
        
    
    def create(self, validated_data):
        return ProductCategory.objects.create(**validated_data)
    
    def update(self, instance, validated_data):
        instance.name = validated_data.get('name', instance.name)
        instance.description = validated_data.get('description', instance.description)
        instance.save()
        return instance
        
            

