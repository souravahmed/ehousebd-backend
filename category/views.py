from .models import Category
from .serializer import CategorySerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny


# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def get_categories(request):
    categories = Category.objects.filter(parent__isnull=True)
    serialized = CategorySerializer(categories,many=True)
    return Response(serialized.data, status=status.HTTP_200_OK)

@api_view(['GET'])
@permission_classes([AllowAny])
def get_featured_categories(request):
    categories = Category.objects.filter(is_featured=True)
    serialized = CategorySerializer(categories, many=True)
    return Response(serialized.data, status=status.HTTP_200_OK)
    
    
    
    
@api_view(['POST'])
def create_category(request):
    serialized = CategorySerializer(data=request.data)
    if(serialized.is_valid()):
        serialized.save()
        response = {'data': serialized.data, 'message': 'created successfully'}
        return Response(response, status=status.HTTP_201_CREATED)
    else:
        return Response(serialized.errors, status=status.HTTP_400_BAD_REQUEST)   

@api_view(['PUT'])
def update_category(request, pk):
    try:
        category = Category.objects.get(id=pk)
        serialized = CategorySerializer(instance=category, data=request.data)
        
        if(serialized.is_valid()):
            serialized.save()
            response = {'data': serialized.data, 'message': 'updated successfully'}
            return Response(response, status=status.HTTP_200_OK)
        
        return Response(serialized.errors, status=status.HTTP_400_BAD_REQUEST)
    
    except Category.DoesNotExist:
        return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)
    

@api_view(['GET'])
def get_category(request, pk):
    try:
        category = Category.objects.get(id=pk)
        serialized = CategorySerializer(category)
        return Response({'data': serialized.data}, status=status.HTTP_200_OK) 
    except Category.DoesNotExist:
       return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)
   
   
@api_view(['DELETE'])
def delete_category(request, pk):
    try:
        category = Category.objects.get(id=pk)
        operation = category.delete()
        data = {}
        if operation:
            data['message'] = 'successfully deleted'
        else:
            data['message'] = 'failed to delete'
        return Response(data, status=status.HTTP_200_OK)
    except Category.DoesNotExist:
        return Response({'message': 'category doesn\'t exsist'}, status=status.HTTP_404_NOT_FOUND)       