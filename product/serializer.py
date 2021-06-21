from rest_framework import serializers
from .models import Product




class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ['display_name', 'slug', 'desc', 'spec']