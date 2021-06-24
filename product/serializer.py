from product_attribute.serializer import ProductAttributeSerializer
from rest_framework import serializers
from .models import Product





class DynamicSerializer(serializers.ModelSerializer):
    
    def __init__(self, *args, **kwargs):
        
        exclude_fields = kwargs.pop('exclude_fields', None)
        super(DynamicSerializer, self).__init__(*args, **kwargs)
        
        if exclude_fields:
            for exclude_field in exclude_fields:
                self.fields.pop(exclude_field)  
                
                

class ProductSerializer(DynamicSerializer):
    
    product_attributes = ProductAttributeSerializer(read_only=True, many=True)
      
    class Meta:
        model = Product
        fields = ['id', 'name', 'display_name', 'slug','short_desc', 'desc', 'spec', 'product_attributes']
        

