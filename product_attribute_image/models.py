from django.db import models
from django.utils import timezone
from product_attribute.models import ProductAttribute

# Create your models here.

class ProductAttributeImage(models.Model):
    
    def attribute_image_path(instance, filename):
        return f'ProductAttributeImages/{instance.product_attribute.product.name}/{instance.product_attribute.color.name}/{filename}'
    
    
    product_attribute = models.ForeignKey(ProductAttribute, related_name='product_attribute_images', on_delete=models.CASCADE)
    name = models.CharField(max_length=250)
    display_name = models.CharField(blank=True, null=True, max_length=300)
    image_path = models.ImageField(upload_to=attribute_image_path)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
    def __str__(self):
        return self.name
