from .models import Size
from django.contrib import admin

# Register your models here.

@admin.register(Size)
class SizeAdmin(admin.ModelAdmin):
    list_display = ['type', 'display_type']
