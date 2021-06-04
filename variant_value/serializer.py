from django.db.models import fields
from rest_framework import serializers
from .models import VariantValue

class VariantValueSerializer(serializers.ModelSerializer):
    class Meta:
        model = VariantValue
        fields = ('value','variant')