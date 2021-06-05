from product import serializer
from product.serializer import ProductSerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny
from .models import Product
# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def index(request):
    products = Product.objects.filter(is_active=True)
    serializer = ProductSerializer(products, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)

@api_view(['GET'])
@permission_classes([AllowAny])
def get_products_by_category_slug(request, category_slug):
    print(category_slug)
    products = Product.objects.filter(category__slug=category_slug)
    serializer = ProductSerializer(products, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)
