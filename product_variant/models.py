from math import trunc
from django.db import models
from product.models import Product
from variant.models import Variant
from variant_value.models import VariantValue
from django.utils import timezone

# Create your models here.

class ProductVariant(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='product_variants')
    variant = models.ForeignKey(Variant, on_delete=models.SET_NULL, null=True, blank=True, related_name='product_variants')
    variant_value = models.ForeignKey(VariantValue, on_delete=models.SET_NULL, null=True, blank=True, related_name='product_variants')
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
    
    def __str__(self):
        return self.variant_value.value
    
    
