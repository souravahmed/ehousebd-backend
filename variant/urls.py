from django.urls import path
from . import views


urlpatterns = [
    path('', views.index, name='get-all-variants'),
    path('<int:pk>', views.get_variant, name='get-variant')
]
