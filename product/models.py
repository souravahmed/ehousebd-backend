from django.db import models
from django.utils import timezone
from product_category.models import ProductCategory
from django.utils.text import slugify

# Create your models here.

class Product(models.Model):
    
    category =  models.ForeignKey(ProductCategory, related_name='products', on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, max_length=255, unique_for_date='created_at', editable=False, default='')
    price = models.IntegerField(default=0)
    short_description = models.CharField(max_length=1000, blank=True, null=True)
    long_description = models.TextField(blank=True, null=True)
    is_active = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
    def save(self, *args, **kwargs):
        slug = slugify(self.name, allow_unicode=True)
        self.slug = slug
        super().save(*args, **kwargs)
    
    def __str__(self):
        return self.name
    
    
