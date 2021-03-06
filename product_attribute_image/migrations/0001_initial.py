# Generated by Django 3.2.3 on 2021-06-21 10:54

from django.db import migrations, models
import django.db.models.deletion
import product_attribute_image.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('product_attribute', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductAttributeImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
                ('display_name', models.CharField(blank=True, max_length=300, null=True)),
                ('image_path', models.ImageField(upload_to=product_attribute_image.models.ProductAttributeImage.attribute_image_path)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('product_attribute', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='product_attribute_images', to='product_attribute.productattribute')),
            ],
        ),
    ]
