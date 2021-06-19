from django.db import models
from django.utils import timezone

# Create your models here.

class Color(models.Model):
    code = models.CharField(max_length=50)
    name = models.CharField(max_length=100)
    display_name = models.CharField(max_length=150)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
