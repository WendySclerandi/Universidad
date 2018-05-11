# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-24 02:53
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('content', '0004_auto_20170523_2353'),
        ('home', '0002_customuser_ban_count'),
    ]

    operations = [
        migrations.CreateModel(
            name='FavoriteContent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True, verbose_name='Fecha')),
                ('content', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='+', to='content.Content')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='favorites', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Contenido Favorito',
                'verbose_name_plural': 'Contenidos Favoritos',
            },
        ),
        migrations.AddField(
            model_name='customuser',
            name='favorite_content',
            field=models.ManyToManyField(related_name='favorites', through='home.FavoriteContent', to='content.Content'),
        ),
    ]
