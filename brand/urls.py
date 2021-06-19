from django.urls import path
from . import views

app_name='brand'


urlpatterns = [
    path('', views.get_brands, name='get_brands'), 
]