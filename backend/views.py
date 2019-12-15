from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, response
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
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
	def testaction(self,request):
		qset = self.get_queryset().last()
		serializer = self.get_serializer_class()(qset)
		return response.Response(serializer.data)


class CourseView(viewsets.ModelViewSet):
	queryset = Course.objects.all()
	serializer_class = CourseSerializer
	#authentication_classes = (TokenAuthentication,)
	#permission_classes = (IsAuthenticated,)

	#@action(methods=['post'], detail=True)
	def create_course(self, request):
		body = request.body

		#VALIDATE DATA

		courses_obj = {
			"focus": body["focus"][0],
			"prereqs": body["prereqs"]
		}

		in_order = organize_prereqs(courses_obj)
		#return response.Response()



class ProfileView(viewsets.ModelViewSet):
	queryset = Profile.objects.all()
	serializer_class = ProfileSerializer

	def create_profile(self, request):
		pass


	@action(methods=['get'],detail=True)	
	def getcourses(self,request):
		qset = self.get_queryset().only("courses")
		serializer = self.get_serializer_class()(qset)
		return response.Response(serializer.data)