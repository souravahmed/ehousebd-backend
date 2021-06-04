from django.shortcuts import render
from rest_framework.decorators import api_view
from .models import Variant
from .serializer import VariantSerializer
from rest_framework.response import Response
from rest_framework import status
from django.http import request
# Create your views here.



def create_variant(request):
    serializer = VariantSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({'message': 'created successfully'}, status=status.HTTP_201_CREATED)    
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'POST'])
def index(request):
    if request.method == 'GET':
        variants = Variant.objects.all()
        serializer = VariantSerializer(variants, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
    
    return create_variant(request)

@api_view(['GET', 'PUT', 'DELETE'])
def get_variant(request, pk):
    if request.method == 'GET':
        try:
            variant = Variant.objects.get(pk=pk)
            serializer = VariantSerializer(variant)
            return Response({'data': serializer.data}, status=status.HTTP_200_OK)
        except Variant.DoesNotExist:
            return Response({'message': 'variant doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)
    
    elif request.method == 'PUT':
        return update_variant(request, pk)
            
    return delete_variant(pk)



def update_variant(request, pk):
    try:
        variant = Variant.objects.get(pk=pk)
        serializer = VariantSerializer(instance=variant, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'updated successfully'}, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
            
    except Variant.DoesNotExist:
        return Response({'message': 'variant doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)

def delete_variant(pk):
    try:
        variant = Variant.objects.get(pk=pk)
        variant.delete()
        return Response({'message': 'variant deleted successfully'}, status=status.HTTP_204_NO_CONTENT)
    except Variant.DoesNotExist:
        return Response({'message': 'variant doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)    
                

