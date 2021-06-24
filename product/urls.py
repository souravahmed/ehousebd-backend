from django.urls import path
from . import views

app_name='product'

urlpatterns = [
    path('', views.index, name='get_products'),
    path('get_featured_products', views.get_featured_products, name='get_products'),
    path('get_brand_products/<slug:brand_slug>', views.get_brand_products, name='get_brand_products'),
    path('get_product_filters', views.get_product_filters, name='get_product_filters')
]
