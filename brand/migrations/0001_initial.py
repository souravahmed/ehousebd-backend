# Generated by Django 3.2.3 on 2021-06-19 02:02

import brand.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Brand',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
                ('display_name', models.CharField(max_length=250)),
                ('slug', models.SlugField(blank=True, default='', editable=False, max_length=255, unique_for_date='created')),
                ('image_path', models.ImageField(upload_to=brand.models.Brand.brand_path)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
