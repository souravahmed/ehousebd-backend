from django.contrib import admin
from .models import ProductVariant
# Register your models here.
@admin.register(ProductVariant)
class ProductVariantAdmin(admin.ModelAdmin):
    list_display = ['product', 'variant', 'variant_value'];
