from django.shortcuts import render
from .serializer import VariantValueSerializer
from .models import VariantValue
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view
# Create your views here.



def create_variant_value(request):
    serializer = VariantValueSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({'message': 'created successfully'}, status=status.HTTP_201_CREATED)    
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'POST'])
def index(request):
    if request.method == 'GET':
        variants = VariantValue.objects.all()
        serializer = VariantValueSerializer(variants, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
  
    return create_variant_value(request)

@api_view(['GET', 'PUT', 'DELETE'])
def get_variant_value(request, pk):
    if request.method == 'GET':
        try:
            variant = VariantValue.objects.get(pk=pk)
            serializer = VariantValueSerializer(variant)
            return Response({'data': serializer.data}, status=status.HTTP_200_OK)
        except VariantValue.DoesNotExist:
            return Response({'message': 'variant value doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)
    
    elif request.method == 'PUT':
        return update_variant_value(request, pk)
            
    return delete_variant_value(pk)



def update_variant_value(request, pk):
    try:
        variant = VariantValue.objects.get(pk=pk)
        serializer = VariantValueSerializer(instance=variant, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'updated successfully'}, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
            
    except VariantValue.DoesNotExist:
        return Response({'message': 'variant doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)

def delete_variant_value(pk):
    try:
        variant = VariantValue.objects.get(pk=pk)
        variant.delete()
        return Response({'message': 'variant value deleted successfully'}, status=status.HTTP_204_NO_CONTENT)
    except VariantValue.DoesNotExist:
        return Response({'message': 'variant value doesn\'t exist'}, status=status.HTTP_404_NOT_FOUND)    
                

