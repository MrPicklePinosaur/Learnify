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
		fields = ('name','resources')

class InterestsSerializer(serializers.ModelSerializer):
	class Meta:
		model = Interests
		fields = ('interest',)

class ProfileSerializer(serializers.ModelSerializer):
	class Meta:
		model = Profile
		fields = ('user','enrolled','experience','language','depth','timeCommitment')

