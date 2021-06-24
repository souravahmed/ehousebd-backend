
from size.serializer import SizeSerializer
from color.serializer import ColorSerializer
from product.selectors.product_selector import ProductSelector
from product.serializer import ProductSerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny
# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def index(request):
    
    products = ProductSelector.get_all()
        
    if 'sort_by' in request.query_params and 'order_by' in request.query_params :
        sort_by = request.query_params['sort_by'].strip()
        order_by = request.query_params['order_by'].strip()
        if sort_by and order_by:
            products =  ProductSelector.sort_by_product_attribute(products, sort_by, order_by)    
    
    data = ProductSerializer(products, many=True, exclude_fields=['name']).data
    return Response(data, status=status.HTTP_200_OK)



@api_view(['GET'])
@permission_classes([AllowAny])
def get_featured_products(request):
    products = ProductSelector.get_featured_products()
    data= ProductSerializer(products, many=True, exclude_fields=['name']).data
    return Response(data, status=status.HTTP_200_OK)

@api_view(['GET'])
@permission_classes([AllowAny])
def get_brand_products(request, brand_slug):
    products = ProductSelector.get_brand_products(brand_slug)
    data = ProductSerializer(products, many=True, exclude_fields=['name']).data
    return Response(data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes([AllowAny])
def get_product_filters(request):
    colorFilters = ProductSelector.get_product_colors()
    colorData = ColorSerializer(colorFilters, many=True).data
    sizeFilters = ProductSelector.get_product_sizes()
    sizeData = SizeSerializer(sizeFilters, many=True).data
    
    return Response({'colors': colorData, 'sizes' : sizeData}, status=status.HTTP_200_OK)