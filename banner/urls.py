from django.urls import path
from . import views

app_name='banner'

urlpatterns = [
    path('', views.get_banners, name='get_banners'),
  
]