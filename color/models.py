from django.db import models
from django.utils import timezone

# Create your models here.

class Color(models.Model):
    name = models.CharField(max_length=100)
    display_name = models.CharField(max_length=150)
    code = models.CharField(max_length=50)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
    def __str__(self):
        return self.name