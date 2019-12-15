from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, permissions
from django.contrib.auth.decorators import login_required
from . models import *
from . serializers import *

# Create your views here.

class ResourceView(viewsets.ModelViewSet):
	queryset = Resource.objects.all()
	serializer_class = ResourceSerializer
	permission_classes = (permissions.IsAuthenticatedOrReadOnly)