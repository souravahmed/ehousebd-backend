"""config URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path
from django.urls.conf import include
from django.conf import settings
from django.conf.urls.static import static

from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi


schema_view = get_schema_view(
   openapi.Info(
      title="Ehousebd API",
      default_version='v1',
      description="Available rest api endpoints",
      contact=openapi.Contact(email="souravahmeddiu@gmail.com"),
   ),
   public=True,
   permission_classes=(permissions.AllowAny,),
   authentication_classes =[]
)


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/categories/', include('category.urls')),
    path('api/products/', include('product.urls')),
    path('api/banners/', include('banner.urls')),
    path('api/brands/', include('brand.urls')),
    path('api/sizes/', include('size.urls')),
    path('api/colors/', include('color.urls')),
    path('api/users/', include('user.urls')),
    path('api/user_addresses/', include('user_address.urls')),
    
    path(r'swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    path(r'redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
