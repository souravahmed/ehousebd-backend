from django.db import models
from django.utils import timezone

# Create your models here.

class Size(models.Model):
    type = models.CharField(max_length=50)
    display_type = models.CharField(max_length=100)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
    def __str__(self):
        return self.display_type