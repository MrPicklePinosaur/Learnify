from django.shortcuts import render
from django.http import HttpResponse
import django.middleware
from rest_framework import viewsets, response
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import action
from django.contrib.auth.decorators import login_required
from . models import *
from . serializers import *
from . coursebuilder import *
import json

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
	def createcourse(self, request):
		body = request.body


		#VALIDATE DATA

		in_order = organize_prereqs(json.loads(body))

		return response.Response(json.dumps(in_order))

class InterestsView(viewsets.ModelViewSet):
	queryset = Interests.objects.all()
	serializer_class = InterestsSerializer

class ProfileView(viewsets.ModelViewSet):

	queryset = Profile.objects.all()
	serializer_class = ProfileSerializer

	@action(methods=['get'],detail=False)	
	def getcourses(self,request):
		qset = self.get_queryset()
		serializer = self.get_serializer_class()(qset)
		return response.Response(serializer.data)

	@action(methods=['post'],detail=False)
	def register(self,request):
		body = json.loads(request.body)[0]
		print(body)
		#django.middleware.csrf.get_token(request)
		user = User.objects.create_user(username=body["username"],password=body["password"])

		profile = Profile(user=user,experience=body["experience"],language=body["language"],depth=body["depth"],timeCommitment=body["commitment"])
		

		raw_interests = body["interests"]
		for r in raw_interests:
			
			i = Interests(interest=r)
			profile.save()
			i.save()
			profile.interests.add(i)

			
		profile.save()
		'''username
		password
		experience
		language
		commitment
		interests
		depth
		'''

		return response.Response({})

