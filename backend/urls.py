from . import views
from django.urls import path, include
from rest_framework import routers
# Create your views here.

router = routers.DefaultRouter()
router.register('tags',views.TagsView)
router.register('resource',views.ResourceView) #endpoint, view
router.register('course',views.CourseView)

urlpatterns = [
	path('',include(router.urls))
]