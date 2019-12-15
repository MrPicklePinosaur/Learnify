from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.


def home(request):

	if request.method == 'POST':
		print(request.body)

	#return render(request, 'backend/base.html')
	return HttpResponse("YEET")
