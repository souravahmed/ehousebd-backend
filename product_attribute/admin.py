from django.contrib import admin
from .models import ProductAttribute
from django.utils.html import format_html

# Register your models here.

@admin.register(ProductAttribute)
class ProductAttributeAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        if obj.image_path:
            return format_html('<img src="{}" width="auto" height="100px" />'.format(obj.image_path.url))
        
    list_display = ['name', 'display_name', 'product', 'color', 'size', 'sku', 'price', 'image_tag']    