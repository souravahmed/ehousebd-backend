from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny
from .models import ProductImageGallery
from .serializer import ProductImageGallerySerializer
# Create your views here.


@api_view(['GET'])
@permission_classes([AllowAny])
def index(request):
    galleries = ProductImageGallery.objects.all()
    serializer = ProductImageGallerySerializer(galleries, many=True)
    return Response(serializer.data, status=status.HTTP_200_OK)

# Create your views here.
