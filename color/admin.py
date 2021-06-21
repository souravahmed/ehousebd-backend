from .models import Color
from django.contrib import admin
from django.utils.html import format_html

# Register your models here.

@admin.register(Color)
class ColorAdmin(admin.ModelAdmin):
    
    def color_tag(self, obj):
        if obj.code:
            return format_html('<div style="width:30px;height:30px;background-color:{};border: 1px solid black"></div>'.format(obj.code))
        
    list_display = ['name', 'display_name', 'color_tag', 'code' ]
