from django.utils import timezone
from django.db import models
from django.utils.text import slugify
# Create your models here.


class Category(models.Model):
    
    def category_path(instance, filename):
        return f'Categories/{instance.slug}/{filename}'
        
    parent = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children')
    name = models.CharField(max_length=150)
    display_name = models.CharField(max_length=150)
    slug = models.SlugField(blank=True, max_length=255, unique_for_date='created', editable=False, default='')
    image_path = models.ImageField(upload_to=category_path, blank=True, null=True)
    is_featured = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
    
    class Meta:
        ordering = ['name']
      
    def save(self, *args, **kwargs):
        slug = slugify(self.name, allow_unicode=True)
        self.slug = slug
        super().save(*args, **kwargs)
        
    
    def __str__(self):
        return self.display_name