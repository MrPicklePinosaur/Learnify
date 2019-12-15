import backend.enums as enums
from django.db import models

# Create your models here.
class Resource(models.Model):
	name = models.CharField(max_length=64)
	link = models.TextField(max_length=500)
	experience = models.CharField(max_length=32,choices=[(tag,tag.value) for tag in enums.Experience])
	time = models.CharField(max_length=32,choices=[(tag,tag.value) for tag in enums.TimeToComplete])
	'''
	topics = 
	focus = 
	prereqs = 
	'''