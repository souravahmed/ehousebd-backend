from django.utils import timezone
from django.db import models
from django.utils.text import slugify
# Create your models here.


class ProductCategory(models.Model):
    name = models.CharField(max_length=150)
    slug = models.SlugField(blank=True, max_length=255, unique_for_date='created_at', editable=False, default='')
    description = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
      
    def save(self, *args, **kwargs):
        slug = slugify(self.name, allow_unicode=True)
        self.slug = slug
        super().save(*args, **kwargs)
        
    
    def __str__(self):
        return self.name