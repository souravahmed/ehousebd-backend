# Generated by Django 3.2.3 on 2021-06-04 12:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0001_initial'),
        ('product_image_gallery', '0004_auto_20210604_1735'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productimagegallery',
            name='product',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='product_image_gallery', to='product.product'),
        ),
    ]