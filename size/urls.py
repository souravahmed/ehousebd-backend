from django.urls import path
from . import views

app_name='size'


urlpatterns = [
    path('', views.get_sizes, name='get_sizes'), 
]