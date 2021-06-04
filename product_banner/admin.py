from django.contrib import admin
from .models import ProductBanner
# Register your models here.

@admin.register(ProductBanner)
class ProductBanner(admin.ModelAdmin):
    list_display = ['product', 'is_active', 'banner_path']
