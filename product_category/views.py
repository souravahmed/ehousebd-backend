from .models import ProductCategory
from .serializer import ProductCategorySerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny


# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def get_categories(request):
    categories = ProductCategory.objects.all()
    serialized = ProductCategorySerializer(categories,many=True)
    return Response(serialized.data)

@api_view(['POST'])
def create_category(request):
    serialized = ProductCategorySerializer(data=request.data)
    if(serialized.is_valid()):
        serialized.save()
        response = {'data': serialized.data, 'message': 'created successfully'}
        return Response(response, status=status.HTTP_201_CREATED)
    else:
        return Response(serialized.errors, status=status.HTTP_400_BAD_REQUEST)   

@api_view(['PUT'])
def update_category(request, pk):
    try:
        category = ProductCategory.objects.get(id=pk)
        serialized = ProductCategorySerializer(instance=category, data=request.data)
        
        if(serialized.is_valid()):
            serialized.save()
            response = {'data': serialized.data, 'message': 'updated successfully'}
            return Response(response, status=status.HTTP_200_OK)
        
        return Response(serialized.errors, status=status.HTTP_400_BAD_REQUEST)
    
    except ProductCategory.DoesNotExist:
        return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)
    

@api_view(['GET'])
def get_category(request, pk):
    try:
        category = ProductCategory.objects.get(id=pk)
        serialized = ProductCategorySerializer(category)
        return Response({'data': serialized.data}, status=status.HTTP_200_OK) 
    except ProductCategory.DoesNotExist:
       return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)
   
   
@api_view(['DELETE'])
def delete_category(request, pk):
    try:
        category = ProductCategory.objects.get(id=pk)
        operation = category.delete()
        data = {}
        if operation:
            data['message'] = 'successfully deleted'
        else:
            data['message'] = 'failed to delete'
        return Response(data, status=status.HTTP_200_OK)
    except ProductCategory.DoesNotExist:
        return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)       