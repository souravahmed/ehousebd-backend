from django.contrib import admin
from .models import UserAddress

# Register your models here.

@admin.register(UserAddress)
class UserAddressAdmin(admin.ModelAdmin):
    list_display = ['user', 'address_line_1', 'id']
