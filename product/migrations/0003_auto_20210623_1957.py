# Generated by Django 3.2.3 on 2021-06-23 13:57

from django.db import migrations, models
import django.db.models.manager


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0002_alter_product_managers'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='product',
            managers=[
                ('product_manager', django.db.models.manager.Manager()),
            ],
        ),
        migrations.AddField(
            model_name='product',
            name='short_desc',
            field=models.CharField(blank=True, default='', max_length=250, null=True),
        ),
    ]
