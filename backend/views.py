from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, permissions
from django.contrib.auth.decorators import login_required
from . models import *
from . serializers import *

# Create your views here.

class TagsView(viewsets.ModelViewSet):
	queryset = Tags.objects.all()
	serializer_class = TagsSerializer

class ResourceView(viewsets.ModelViewSet):
	queryset = Resource.objects.all()
	serializer_class = ResourceSerializer
	
	def list(self,request):
		pass

	def create(self. request):
		pass

	def retrieve(self, request, pk=None):
		pass

	def update(self,request, pk=None)
		pass

class CourseView(viewsets.ModelViewSet):
	queryset = Course.objects.all()
	serializer_class = CourseSerializer

	def list(self,request):
		pass

	def create(self. request):
		pass

	def retrieve(self, request, pk=None):
		pass

	def update(self,request, pk=None)
		pass



class ProfileView(viewsets.ModelViewSet):
	queryset = Profile.objects.all()
	serializer_class = ProfileSerializer
	
	def list(self,request):
		pass

	def create(self. request):
		pass

	def retrieve(self, request, pk=None):
		pass

	def update(self,request, pk=None)
		pass
