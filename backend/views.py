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
	permission_classes = (permissions.IsAuthenticatedOrReadOnly,)

class ResourceView(viewsets.ModelViewSet):
	queryset = Resource.objects.all()
	serializer_class = ResourceSerializer
	permission_classes = (permissions.IsAuthenticatedOrReadOnly,)

class CourseView(viewsets.ModelViewSet):
	queryset = Course.objects.all()
	serializer_class = CourseSerializer
	permission_classes = (permissions.IsAuthenticatedOrReadOnly,)