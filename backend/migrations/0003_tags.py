# Generated by Django 3.0 on 2019-12-15 04:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0002_auto_20191214_2259'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tags',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tags', models.CharField(choices=[('python', 'PYTHON'), ('java', 'JAVA')], max_length=64)),
            ],
        ),
    ]