from django.urls import path
from . import views

app_name='product_image_gallery'

urlpatterns = [
    path('', views.index, name='get_product_image_gallries')
]