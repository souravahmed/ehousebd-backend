from .models import Size
from .serializer import SizeSerializer
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework.permissions import AllowAny
# Create your views here.

@api_view(['GET'])
@permission_classes([AllowAny])
def get_sizes(request):
    sizes = Size.objects.all()
    serialized = SizeSerializer(sizes,many=True)
    return Response(serialized.data, status=status.HTTP_200_OK)

    


