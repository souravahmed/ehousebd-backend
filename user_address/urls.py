from django.urls import path
from . import views


app_name = 'user_address'

urlpatterns = [
    path('', views.get_user_addresses, name='get_user_addresses'),
    path('create', views.create_user_address, name='create_user_address'),
    path('update/<int:pk>', views.update_user_address, name='update_user_address'),
    path('delete/<int:pk>', views.delete_address, name='delete_address')
]