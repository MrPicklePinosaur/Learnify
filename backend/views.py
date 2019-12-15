from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, permissions, response
from rest_framework.decorators import action
from django.contrib.auth.decorators import login_required
from . models import *
from . serializers import *
from . coursebuilder import *

# Create your views here.

class TagsView(viewsets.ModelViewSet):
	queryset = Tags.objects.all()
	serializer_class = TagsSerializer

class ResourceView(viewsets.ModelViewSet):

	queryset = Resource.objects.all()
	serializer_class = ResourceSerializer

	@action(methods=['get'], detail=False)
	def listmeballs(self,request):
		qset = self.get_queryset().last()
		serializer = self.get_serializer_class()(qset)
		return response.Response(serializer.data)


class CourseView(viewsets.ModelViewSet):
	queryset = Course.objects.all()
	serializer_class = CourseSerializer

	def create_course(self, request):
		body = request.body

		#VALIDATE DATA

		courses_obj = {
			"focus": body["focus"][0],
			"prereqs": body["prereqs"]
		}
		in_order = organize_prereqs(courses_obj)


	'''
	def create(self, request):
		pass
	'''


class ProfileView(viewsets.ModelViewSet):
	queryset = Profile.objects.all()
	serializer_class = ProfileSerializer
