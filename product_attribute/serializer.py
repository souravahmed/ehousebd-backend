from django.db.models import manager
from size.serializer import SizeSerializer
from color.serializer import ColorSerializer
from rest_framework.serializers import ModelSerializer
from .models import ProductAttribute

class ProductAttributeSerializer(ModelSerializer):
    color = ColorSerializer(read_only=True)
    size = SizeSerializer(read_only=True)
    class Meta:
        model = ProductAttribute
        fields = ['color', 'size', 'sku', 'name', 'display_name', 'image_path', 'price']