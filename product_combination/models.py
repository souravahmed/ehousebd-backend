from django.db import models
from product.models import Product 
from random import randint
from django.utils import timezone
# Create your models here.

class ProductCombination(models.Model):
    def generate_sku():
        return f'EHBD-{randint(10**3, (10**6)-1)}'
    
    name = models.CharField(max_length=100, default='')
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='product_combinations')
    combination_string = models.CharField(max_length=40, help_text='ex. size-value -> xl-blue, m-green')
    sku = models.CharField(max_length=40, default=generate_sku, unique=True)
    stock = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=timezone.now())
    updated_at = models.DateTimeField(auto_now=timezone.now())
    
    def __str__(self):
        return self.name
    