
from django.db import models
from django.contrib.auth.models import User
from rest_framework import response
#from djongo import models as djongomodels

#from enumchoicefield import EnumChoiceField

# Create your models here.
experience_choices=[("BEGINNER","Beginner"),("INTERMEDIATE","Intermediate"),("EXPERT","Expert")]
language_choices=[("NONE","None"),("JAVA","Java"),("JS","Js"),("PYTHON","Python"),("HTML/CSS","Html/css"),
				  ("C++","C++")]
subject_areas=[("COMPUTER VISION","computer vision"),("REACT","react"),
			   ("MACHINE LEARNING","Machine learning"),("FUNDAMENTALS","Fundamentals"),
			   ("NLP","Nlp"),("AUGMENTED REALITY","Augmented reality"),("VIRTUAL REALITY","Virtual reality")]

class Tags(models.Model):
	tag_name = models.CharField(max_length=50)

	def __str__(self):
		return self.tag_name

class Resource(models.Model):
	name = models.CharField(max_length=64)
	link = models.URLField(max_length=500)
	experience = models.CharField(max_length=32,choices=experience_choices,blank=True)
	time = models.CharField(max_length=32,choices=[("BRIEF","Brief")],blank=True)
	
	topics = models.ManyToManyField(Tags,related_name='topics')
	focus = models.ManyToManyField(Tags,related_name='focus')
	prereqs = models.ManyToManyField(Tags,related_name='prereqs')

	def __str__(self):
		return self.name

class Course(models.Model):
	name = models.CharField(max_length=64)
	resources = models.ManyToManyField(Resource,related_name='courses')

class Profile(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	enrolled = models.ManyToManyField(Course,related_name='enrolled')

	experience = models.CharField(max_length=64,choices=experience_choices,blank=True)
	language = models.CharField(max_length=20,choices=language_choices,blank=True)
	depth = models.CharField(max_length=30,blank=True)
	timeCommitment = models.DurationField(blank=True)
