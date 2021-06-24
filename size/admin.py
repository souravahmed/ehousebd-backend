from .models import Size
from django.contrib import admin

# Register your models here.

@admin.register(Size)
class SizeAdmin(admin.ModelAdmin):
    list_display = ['name', 'display_name']
