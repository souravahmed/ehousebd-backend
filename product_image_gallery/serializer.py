
from rest_framework import serializers
from .models import ProductImageGallery
from product_image.serializer import ProductImageSerializer

class ProductImageGallerySerializer(serializers.ModelSerializer):
    product_images = ProductImageSerializer(many=True, read_only=True)
    class Meta:
        model = ProductImageGallery
        fields = ['thumbnail', 'product_images']