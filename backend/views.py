from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets
from . models import *
from . serializers import *

# Create your views here.


def home(request):

	if request.method == 'POST':
		print(request.body)

	#return render(request, 'backend/base.html')
	return HttpResponse("YEET")

class ResourceView(viewsets.ModelViewSet):
	queryset = Resource.objects.all()
	serializer_class = ResourceSerializer