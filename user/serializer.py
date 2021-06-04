
from user.models import User
from rest_framework import serializers

from .models import User
from user_address.serializer import UserAddressSerializer
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView
from datetime import timedelta


class UserSerializer(serializers.ModelSerializer):
    """
    this serializer used only for creation user
    """
    confirm_password = serializers.CharField(write_only=True)
    user_address = UserAddressSerializer(many=True, read_only=True)
    
    class Meta:
        model = User
        fields = ['email', 'password', 'confirm_password', 'user_address', 'first_name', 'last_name']
        extra_kwargs = {
            'password': {'write_only': True}
        }
    
    def create(self, validated_data):
        print("calling create")
        password = validated_data.get('password')
        confirm_password = validated_data.get('confirm_password')
        if password != confirm_password:
            raise serializers.ValidationError({'password': 'password should match with confirm password'})
        
        new_user_data = {}
        for key, value in validated_data.items():
            if key != 'confirm_password':
                new_user_data[key] = value
                
        return User.objects.create_user(**new_user_data)
    
class UserUpdateSerializer(serializers.ModelSerializer):
    """
    the reason behind for another serializer is user have to provide password and confirm_password 
    if he/she want to update user info like first_name or last_name which not good but now user can provide 
    optional field without updating password or email
    """
    first_name = serializers.CharField(required=True)
    last_name = serializers.CharField(required=True)
    mobile_number = serializers.CharField(required=True)
    user_address = UserAddressSerializer(many=True, read_only=True)
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'mobile_number', 'user_address'] 
    
    
    def update(self, instance, validated_data):
        instance.first_name = validated_data.get('first_name', instance.first_name)
        instance.last_name = validated_data.get('last_name', instance.last_name)
        instance.mobile_number = validated_data.get('mobile_number', instance.mobile_number)
        instance.save()
        return instance
    

class ResetPasswordSerializer(serializers.ModelSerializer):
    confirm_password = serializers.CharField(write_only=True)
    class Meta:
        model = User
        fields = ['password', 'confirm_password']         
        extra_kwargs = {
            'password': {'write_only': True}
        }
    

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attr):
        data = super().validate(attr)
        data['_id'] = self.user.id
        data['access_token_expire_in_seconds'] = timedelta(days=1)
        data['refresh_token_expire_in_seconds'] = timedelta(days=2)
        return data
    

class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer