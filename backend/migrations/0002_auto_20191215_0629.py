# Generated by Django 3.0 on 2019-12-15 11:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='interest',
            name='interest',
            field=models.CharField(choices=[('COMPUTER VISION', 'computer vision'), ('REACT', 'react'), ('MACHINE LEARNING', 'Machine learning'), ('FUNDAMENTALS', 'Fundamentals'), ('NLP', 'Nlp'), ('AUGMENTED REALITY', 'Augmented reality'), ('VIRTUAL REALITY', 'Virtual reality')], max_length=128),
        ),
    ]
