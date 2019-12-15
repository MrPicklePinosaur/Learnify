from backend.enums import *
from django.db import models
from enumchoicefield import EnumChoiceField

# Create your models here.
class Resource(models.Model):
	name = models.CharField(max_length=64)
	link = models.TextField(max_length=500)
	#experience = models.CharField(max_length=32,choices=[(tag,tag.value) for tag in enums.Experience])
	#time = models.CharField(max_length=32,choices=[(tag,tag.value) for tag in enums.TimeToComplete])
	experience = EnumChoiceField(enum_class=Experience, default=Experience.python)
	time = EnumChoiceField(enum_class=TimeToComplete, default=TimeToComplete.brief)
	'''
	topics = 
	focus = 
	prereqs = 
	'''

	def __str__(self):
		return name