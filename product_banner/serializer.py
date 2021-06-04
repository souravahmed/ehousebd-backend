from rest_framework import serializers
from .models import ProductBanner
class ProductBannerSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductBanner
        fields = ['banner_path']