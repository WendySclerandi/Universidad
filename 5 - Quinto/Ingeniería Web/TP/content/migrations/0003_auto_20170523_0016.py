# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-23 03:16
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('content', '0002_auto_20170521_0100'),
    ]

    operations = [
        migrations.RenameField(
            model_name='content',
            old_name='removed_by_complaints',
            new_name='reported',
        ),
    ]
