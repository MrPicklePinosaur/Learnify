
from django.db import models
#from djongo import models as djongomodels

#from enumchoicefield import EnumChoiceField

# Create your models here.
class Tags(models.Model):
	tag_name = models.CharField(max_length=50)

	def __str__(self):
		return self.tag_name

class Resource(models.Model):
	name = models.CharField(max_length=64)
	link = models.TextField(max_length=500)
	experience = models.CharField(max_length=32,choices=[("beginner","BEGINNER")],blank=True)
	time = models.CharField(max_length=32,choices=[("brief","BRIEF")],blank=True)
	
	topics = models.ManyToManyField(Tags,related_name='topics')
	focus = models.ManyToManyField(Tags,related_name='focus')
	prereqs = models.ManyToManyField(Tags,related_name='prereqs')

	def __str__(self):
		return self.name

class Course(models.Model):
	name = models.CharField(max_length=64)
	#cources = djongomodels.ArrayModelField(model_container=Resource,blank=True)
