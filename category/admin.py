from django.contrib import admin
from .models import Category
from django.utils.html import format_html

# Register your models here.


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        if obj.image_path:
            return format_html('<img src="{}" width="auto" height="100px" />'.format(obj.image_path.url))

    list_display = ['name', 'display_name', 'parent', 'slug', 'image_tag']
    


