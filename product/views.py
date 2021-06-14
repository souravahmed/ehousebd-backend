from rest_framework.fields import empty
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
    
    if 'category_slug' in request.query_params:
        category_slug = request.query_params['category_slug'].strip()
        if category_slug:
            products = products.filter(category__slug = category_slug)
            
    if 'filter_by' in request.query_params:
        category_slug = request.query_params['filter_by'].strip()
        if category_slug:
            products = products.filter(category__slug=category_slug)
        
    if 'sort_by' in request.query_params and 'order_by' in request.query_params :
        sort_by = request.query_params['sort_by'].strip()
        order_by = request.query_params['order_by'].strip()
        if  (order_by and sort_by) and sort_by.lower() in ['price']:
            products =  products.order_by('-price') if order_by.lower() == 'desc' else products.order_by('price')
            
        
    serializer = ProductSerializer(products, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)

