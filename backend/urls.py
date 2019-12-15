from . import views
from django.urls import path, include
from rest_framework import routers
# Create your views here.

router = routers.DefaultRouter()
router.register('resource',views.ResourceView) #endpoint, view

urlpatterns = [
	path('',include(router.urls))
]