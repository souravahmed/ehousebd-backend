from django.contrib import admin
from .models import ProductCombination
# Register your models here.
@admin.register(ProductCombination)
class ProductCombinationAdmin(admin.ModelAdmin):
    list_display= ['id', 'name', 'combination_string', 'sku', 'stock']
    readonly_fields = ['sku']
