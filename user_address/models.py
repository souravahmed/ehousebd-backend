from django.db import models
from user.models import User
# Create your models here.

class UserAddress(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='user_address')
    address_line_1 = models.TextField()
    address_line_2 = models.TextField(blank=True, null=True)
    
