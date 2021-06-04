from django.db import models
from product.models import Product
from datetime import date
# Create your models here.

class ProductBanner(models.Model):
    def get_upload_path(instance, filename):
        today = date.today().strftime('%d-%m-%Y')
        return f'Banner/{today}/{filename}'
      
         
    product = models.OneToOneField(Product, on_delete=models.CASCADE, related_name='product_banner')
    banner_path = models.ImageField(upload_to=get_upload_path)
    is_active = models.BooleanField(default=False)
   
    
    
    def __str__(self):
        return self.product.name
