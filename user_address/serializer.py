from django.db import models
from django.db.models import fields
from rest_framework import serializers
from .models import UserAddress
class UserAddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAddress
        fields = ['address_line_1','address_line_2', 'id']
    
    def create(self, validated_data):
        address_1 = validated_data.get('address_line_1')
        address_2 = validated_data.get('address_line_2')
        current_user = validated_data.get('current_user')
        return UserAddress.objects.create(address_line_1=address_1, address_line_2=address_2, user=current_user)
    
   