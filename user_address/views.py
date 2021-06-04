from rest_framework import serializers, status
from user import serializer
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from user_address.serializer import UserAddressSerializer
from django.shortcuts import render
from rest_framework.decorators import api_view
from .models import UserAddress
from rest_framework.permissions import IsAuthenticated
from .serializer import UserAddressSerializer
from user.models import User

# Create your views here.


@api_view(['GET'])
def get_user_addresses(request):
     addresses = UserAddress.objects.filter(user__email=request.user)
     serialized = UserAddressSerializer(addresses, many=True)
     return Response(serialized.data)

@api_view(['POST'])
def create_user_address(request):
     serializer = UserAddressSerializer(data=request.data)
     current_user = User.objects.get(email=request.user)
     if serializer.is_valid():
          serializer.save(current_user=current_user)
          return Response({'data': serializer.data, 'message': 'created successfully'}, status=status.HTTP_201_CREATED)
     else:
          return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
def update_user_address(request, pk):    
     try:
          current_user = User.objects.get(email=request.user)
          address = UserAddress.objects.get(id=pk, user=current_user)
          serializer = UserAddressSerializer(instance=address, data=request.data)
          if serializer.is_valid():
               serializer.save()
               return Response({'data': serializer.data, 'message': 'updated successfully'}, status=status.HTTP_200_OK)
          return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
     except UserAddress.DoesNotExist:
          return Response({'message': 'address does not exsist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['DELETE'])
def delete_address(request, pk):
     try:
          current_user = User.objects.get(email=request.user)
          address = UserAddress.objects.get(id=pk, user=current_user)
          operation = address.delete()
          data = {}
          if operation:
               data['message'] = 'successfully deleted'
          else:
               data['message'] = 'failed to delete'
          
          return Response(data, status=status.HTTP_200_OK) 
     
     except UserAddress.DoesNotExist:
          return Response({'message': 'address does not exsist'}, status=status.HTTP_404_NOT_FOUND) 
               
          