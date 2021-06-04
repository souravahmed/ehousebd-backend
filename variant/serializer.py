from django.db.models import fields
from rest_framework.serializers import ModelSerializer
from .models import Variant


class VariantSerializer(ModelSerializer):
    class Meta:
        model = Variant
        fields = ('name',)