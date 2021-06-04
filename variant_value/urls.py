from django.urls import path
from . import views


urlpatterns = [
    path('', views.index, name='get-all-variants-value'),
    path('<int:pk>', views.get_variant_value, name='get-variant-value')
]
