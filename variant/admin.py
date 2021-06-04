from django.contrib import admin
from django.db import models
from .models import Variant
from django.contrib import admin
# Register your models here.

@admin.register(Variant)
class VariantAdmin(admin.ModelAdmin):
    list_display = ['name']
