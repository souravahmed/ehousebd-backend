from product.models import Product
from django.db import models
from django.utils import timezone
from size.models import Size
from color.models import Color
import uuid
# Create your models here.

class ProductAttribute(models.Model):
    
    def attribute_path(instance, filename):
        return f'Products/{instance.product.slug}/{filename}'
    
    def generate_sku():
        return f'EHBD-{uuid.uuid4().hex[:8]}'
    
    
    product = models.ForeignKey(Product, related_name='product_attributes', on_delete=models.CASCADE)
    color = models.ForeignKey(Color, related_name='product_attributes', on_delete=models.CASCADE)
    size = models.ForeignKey(Size, related_name='product_attributes', on_delete=models.CASCADE, blank=True, null=True)
    sku = models.CharField(max_length=100, editable=False, default=generate_sku)
    name = models.CharField(max_length=150)
    display_name = models.CharField(max_length=150, blank=True, null=True)
    image_path = models.ImageField(upload_to=attribute_path)
    price = models.PositiveIntegerField()
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
    def __str__(self):
        return self.name