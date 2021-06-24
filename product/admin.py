from django.contrib import admin
from .models import Product

# Register your models here.
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'category', 'brand', 'slug', 'is_active', 'is_featured']
    
    def get_queryset(self, request):
        return self.model.objects.get_queryset().order_by('id')
      
