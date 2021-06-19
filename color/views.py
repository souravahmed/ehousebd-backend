from .models import Color
from .serializer import ColorSerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny
# Create your views here.

@api_view(['GET'])
@permission_classes([AllowAny])
def get_colors(request):
    colors = Color.objects.all()
    serialized = ColorSerializer(colors,many=True)
    return Response(serialized.data, status=status.HTTP_200_OK)

    


