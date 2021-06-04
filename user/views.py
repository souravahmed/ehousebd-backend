from user.models import User
from rest_framework.response import Response
from user.serializer import UserSerializer
from .serializer import ResetPasswordSerializer, UserSerializer, UserUpdateSerializer
from rest_framework import status
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny

#from rest_framework.authtoken.models import Token
from .models import User

# Create your views here.

@api_view(['POST'])
@permission_classes([AllowAny])
def register(request):
    serializer = UserSerializer(data=request.data)
    if(serializer.is_valid()):
        new_user = serializer.save();
        #token = Token.objects.get(user=new_user).key
        return Response({'data': serializer.data, 'message': 'user created successfully'}, status=status.HTTP_201_CREATED)
    else:
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def get_user(request):
    exsistUser = User.objects.get(email=request.user)
    serialized = UserSerializer(exsistUser)
    return Response(serialized.data)

@api_view(['PUT'])
def update_user(request):
    current_user = User.objects.get(email=request.user)
    serializer = UserUpdateSerializer(instance=current_user, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({'data': serializer.data, 'message': 'updated successfully'}, status=status.HTTP_200_OK)
    else:
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
@api_view(['PUT'])
def reset_password(request):
    current_user = User.objects.get(email=request.user)    
    serializer = ResetPasswordSerializer(instance=current_user, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({'message': 'Password reset successfully'}, status=status.HTTP_200_OK)
    else:
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
