# Generated by Django 3.2.3 on 2021-06-03 21:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0001_initial'),
        ('product_image_gallery', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='productimagegallery',
            name='product',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to='product.product'),
        ),
    ]