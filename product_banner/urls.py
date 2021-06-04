from django.urls import path
from . import views

app_name='product_banner'

urlpatterns = [
    path('', views.get_product_banners, name='get_product_banners'),
  
]