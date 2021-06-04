from django.db import models
from django.utils import timezone

# Create your models here.

class Variant(models.Model):
    name = models.CharField(max_length=20)
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
    def __str__(self):
        return self.name
    
