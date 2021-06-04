from product_banner.models import ProductBanner
from django.shortcuts import render
from .serializer import ProductBannerSerializer
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework import status
# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def get_product_banners(request):
    banners = ProductBanner.objects.filter(is_active=True)
    serializer = ProductBannerSerializer(banners, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)




