from django.contrib import admin
from .models import ProductImageGallery
# Register your models here.

@admin.register(ProductImageGallery)
class ProductImageGalleryAdmin(admin.ModelAdmin):
    list_display = ['id', 'thumbnail', 'variant_value', 'product']
