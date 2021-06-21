from django.contrib import admin
from django.utils.html import format_html
from .models import Brand

# Register your models here.
@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        if obj.image_path:
            return format_html('<img src="{}" width="auto" height="100px" />'.format(obj.image_path.url))

    list_display = ['name', 'display_name', 'slug', 'image_tag', 'is_active']
