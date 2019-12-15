from rest_framework import serializers
from . models import *

class TagsSerializer(serializers.ModelSerializer):
	class Meta:
		model = Tags
		fields = ('tag_name',)

class ResourceSerializer(serializers.ModelSerializer):
	class Meta:
		model = Resource
		fields = ('name','link','experience','time','topics','focus','prereqs')

class CourseSerializer(serializers.ModelSerializer):
	class Meta:
		model = Course
		fields = ()