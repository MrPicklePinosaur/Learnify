from . import views
from django.urls import path, include
# Create your views here.


urlpatterns = [
	path('',views.home, name='backend-home')
]