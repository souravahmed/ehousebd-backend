from django.db import models
from product_image_gallery.models import ProductImageGallery
from random import randint
# Create your models here.

class ProductImage(models.Model):
    def get_upload_path(instance, filename):
        ext = filename.split('.')[-1]
        slug = instance.product_image_gallery.product.slug
        return f'{slug}/images/{slug}-{randint(1,20)}.{ext}'
    
    
    product_image_gallery = models.ForeignKey(ProductImageGallery, on_delete=models.SET_NULL, null=True, blank=True, related_name='product_images')
    image = models.ImageField(upload_to=get_upload_path)
    
    