from django.db import models
from datetime import date
from django.utils import timezone
# Create your models here.

class Banner(models.Model):
    def get_upload_path(instance, filename):
        today = date.today().strftime('%d-%m-%Y')
        return f'Banner/{today}/{filename}'
    
    name = models.CharField(max_length=150)
    image_path = models.ImageField(upload_to=get_upload_path)
    link = models.CharField(max_length=250, blank=True, null=True)
    is_active = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=timezone.now())
    updated = models.DateTimeField(auto_now=timezone.now())
   
    
    
    def __str__(self):
        return self.name
