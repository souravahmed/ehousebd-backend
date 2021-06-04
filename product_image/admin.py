from django.contrib import admin
from .models import ProductImage
# Register your models here.

@admin.register(ProductImage)
class ProductImageAdmin(admin.ModelAdmin):
    list_display = ['id', 'image', 'product_image_gallery']
