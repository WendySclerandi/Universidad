# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-06-03 19:13
from __future__ import unicode_literals

from django.db import migrations

def add_sections(apps, schema_editor):
    Section = apps.get_model('content', 'Section')
    section_reviews = Section(name='Reviews',
                              description='Análisis, impresiones u opiniones acerca de las películas o series que nuestros usuarios han visto.')
    section_reviews.save()

    section_fanart = Section(name='Fanart',
                             description='Dibujos, diseños, decoraciones, accesorios, colecciones, cosplays, cortometrajes propios y videos de nuestros usuarios más creativos. ')
    section_fanart.save()

    section_novedades = Section(name='Novedades',
                                description='Noticias, trailers y rumores aportados por nuestros usuarios más informados.')
    section_novedades.save()

    section_listas = Section(name='Listas',
                             description='Listados personalizados de películas y series recomendadas por nuestros usuarios.')
    section_listas.save()

    section_preguntas = Section(name='Preguntas',
                                description='Dudas y consultas publicadas por nuestros usuarios.')
    section_preguntas.save()

    section_general = Section(name='General',
                              description='Temas de discusión general.')
    section_general.save()


class Migration(migrations.Migration):

    dependencies = [
        ('content', '0004_auto_20170523_2353'),
    ]

    operations = [
        migrations.RunPython(add_sections),
    ]