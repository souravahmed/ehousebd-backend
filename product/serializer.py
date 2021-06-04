from rest_framework import serializers
from .models import Product
from product_image_gallery.serializer import ProductImageGallerySerializer




class ProductSerializer(serializers.ModelSerializer):
    product_image_gallery = ProductImageGallerySerializer(many=True, read_only=True)
    
    class Meta:
        model = Product
        fields = ['display_name', 'slug', 'short_description', 'long_description', 'product_image_gallery']