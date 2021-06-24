from django.db import models
from django.utils import timezone
from category.models import Category
from brand.models import Brand
from django.utils.text import slugify

# Create your models here.



class ProductManager(models.Manager):
    def get_queryset(self):
        return super(ProductManager,self).get_queryset().filter(is_active=True)  
    
    
class Product(models.Model):
    
    name = models.CharField(max_length=255)
    display_name = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, max_length=255, unique_for_date='created', editable=False, default='')
    short_desc = models.CharField(max_length=250, default='', null=True, blank=True)
    desc = models.TextField(blank=True, null=True)
    spec = models.TextField(blank=True, null=True)
    category =  models.ForeignKey(Category, related_name='products', on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, related_name='products', on_delete=models.CASCADE)
    is_active = models.BooleanField(default=False)
    is_featured = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
    product_manager = ProductManager() # default manager
    objects = models.Manager() # used in admin
    
    def save(self, *args, **kwargs):
        slug = slugify(self.name, allow_unicode=True)
        self.slug = slug
        super().save(*args, **kwargs)
    
    def __str__(self):
        return self.name
    

      
