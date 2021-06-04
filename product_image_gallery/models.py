from django.db import models
from variant_value.models import VariantValue
from product.models import Product
from django.utils import timezone

# Create your models here.

class ProductImageGallery(models.Model):
    def get_upload_path(instance, filename):
        return f'{instance.product.slug}/{filename}'
    
    product = models.ForeignKey(Product, on_delete=models.CASCADE, null=True, related_name='product_image_gallery')
    thumbnail = models.ImageField(upload_to=get_upload_path)
    variant_value = models.ForeignKey(VariantValue, on_delete=models.CASCADE, null=True, related_name='product_image_gallery')
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
    def __str__(self):
        return f'{self.product.name} - {self.variant_value.value}'
