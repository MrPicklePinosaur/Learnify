from backend.enums import *
from django.db import models
#from enumchoicefield import EnumChoiceField

# Create your models here.
class Resource(models.Model):
	name = models.CharField(max_length=64)
	link = models.TextField(max_length=500)
	experience = models.CharField(max_length=32,choices=[("beginner","BEGINNER")],blank=True)
	time = models.CharField(max_length=32,choices=[("brief","BRIEF")],blank=True)
	'''
	topics = 
	focus = 
	prereqs = 
	'''

	def __str__(self):
		return name