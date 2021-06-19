from .models import Color
from django.contrib import admin

# Register your models here.

@admin.register(Color)
class ColorAdmin(admin.ModelAdmin):
    list_display = ['code', 'name', 'display_name']
