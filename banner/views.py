from .models import Banner
from .serializer import BannerSerializer
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework import status
# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def get_banners(request):
    banners = Banner.objects.filter(is_active=True)
    serializer = BannerSerializer(banners, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)




