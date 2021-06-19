from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.utils import timezone
from .manager import UserManager
from django.db.models.signals import post_save
#from django.dispatch import receiver
from django.conf import settings
#from rest_framework.authtoken.models import Token
# Create your models here.

class User(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(verbose_name='email address', max_length=255, unique=True)
    first_name = models.CharField(verbose_name='first name', max_length=255, blank=True)
    last_name = models.CharField(verbose_name='last name', max_length=255, blank=True)
    mobile_number = models.CharField(verbose_name='mobile number', max_length=11, blank=True)
    is_active = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    last_login = models.DateTimeField(auto_now=timezone.now())
    date_joined = models.DateTimeField(auto_now_add=timezone.now())
    USERNAME_FIELD = 'email'
    objects = UserManager()
    
    def __str__(self):
        return self.email
    
    # @receiver(post_save, sender=settings.AUTH_USER_MODEL)
    # def create_auth_token(sender, instance=None, created=False, **kwargs):
    #     if created:
    #         Token.objects.create(user=instance)