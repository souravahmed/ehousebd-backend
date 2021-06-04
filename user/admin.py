from django.contrib import admin

from .models import User

# Register your models here.

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ['email','first_name', 'last_name','is_active', 'is_staff', 'is_superuser', 'last_login', 'date_joined']
    search_fields = ['email']
    list_filter = ['is_active']

