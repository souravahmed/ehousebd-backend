from django.db import models
from django.utils import timezone
from django.utils.text import slugify

# Create your models here.

class Brand(models.Model):
    def brand_path(instance, filename):
        return f'Brand/{instance.slug}/{filename}'
    
    name = models.CharField(max_length=250)
    display_name = models.CharField(max_length=250)
    slug = models.SlugField(blank=True, max_length=255, unique_for_date='created', editable=False, default='')
    image_path = models.ImageField(upload_to=brand_path)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    
        
    def save(self, *args, **kwargs):
        slug = slugify(self.name, allow_unicode=True)
        self.slug = slug
        super().save(*args, **kwargs)