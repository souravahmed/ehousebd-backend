from django.db import models
from variant.models import Variant

# Create your models here.

class VariantValue(models.Model):
    value = models.CharField(max_length=30)
    variant = models.ForeignKey(Variant, on_delete=models.CASCADE, related_name='variant_values')
    
    def __str__(self):
        return self.value
