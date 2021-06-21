from django.contrib import admin
from .models import ProductAttributeImage
from django.utils.html import format_html

# Register your models here.

@admin.register(ProductAttributeImage)
class ProductAttributeImageAdmin(admin.ModelAdmin):
    
    def image_tag(self, obj):
        if obj.image_path:
            return format_html('<img src="{}" width="auto" height="100px" />'.format(obj.image_path.url))
        
    list_display = ['name', 'product_attribute', 'image_tag']


