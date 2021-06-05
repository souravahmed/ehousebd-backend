from django.urls import path
from . import views

app_name='product'

urlpatterns = [
    path('', views.index, name='get_products'),
    path('<slug:category_slug>', views.get_products_by_category_slug, name='get_products_by_category_slug')
]
