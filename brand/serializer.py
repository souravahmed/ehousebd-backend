from rest_framework import serializers
from .models import Brand



class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = ['id', 'name', 'display_name', 'slug', 'image_path']