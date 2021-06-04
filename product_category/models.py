from django.utils import timezone
from django.db import models

# Create your models here.


class ProductCategory(models.Model):
    name = models.CharField(max_length=150)
    description = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
  
    
    def __str__(self):
        return self.name