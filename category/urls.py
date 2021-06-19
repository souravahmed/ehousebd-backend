from django.urls import path
from . import views

app_name='category'

urlpatterns = [
    path('', views.get_categories, name='get_categories'),
    path('create', views.create_category, name='create_category'),
    path('update/<int:pk>', views.update_category, name='update_category'),
    path('<int:pk>', views.get_category, name='get_category'),
   
]