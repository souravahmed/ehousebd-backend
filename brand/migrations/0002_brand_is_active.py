# Generated by Django 3.2.3 on 2021-06-21 07:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('brand', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='brand',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
    ]
