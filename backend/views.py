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
		qset = self.get_queryset().only('experience').filter(name__icontains='p')
		serializer = self.get_serializer_class()(qset,many=True)
		print(qset)
		return response.Response(serializer.data)


class CourseView(viewsets.ModelViewSet):
	queryset = Course.objects.all()
	serializer_class = CourseSerializer
	#authentication_classes = (TokenAuthentication,)
	#permission_classes = (IsAuthenticated,)

	@action(methods=['post'], detail=False)
	def create_course(self, request):
		body = request.body

		#VALIDATE DATA

		courses_obj = {
			"focus": body["focus"][0],
			"prereqs": body["prereqs"]
		}

		in_order = organize_prereqs(courses_obj)

		qset = self.get_queryset()

		serializer = self.get_serializer_class()(qset)
		return response.Response(qset.data)



class ProfileView(viewsets.ModelViewSet):
	queryset = Profile.objects.all()
	serializer_class = ProfileSerializer

	@action(methods=['get'],detail=False)	
	def getcourses(self,request):
		#qset = self.get_queryset().only("enrolled")
		qset = self.get_queryset()
		#qset.filter()
		print(qset)
		serializer = self.get_serializer_class()(qset)
		print(serializer.data)
		return response.Response(serializer.data)