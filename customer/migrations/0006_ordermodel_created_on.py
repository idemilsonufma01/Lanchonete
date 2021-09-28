# Generated by Django 3.1.4 on 2021-09-24 14:06

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0005_remove_ordermodel_created_on'),
    ]

    operations = [
        migrations.AddField(
            model_name='ordermodel',
            name='created_on',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
