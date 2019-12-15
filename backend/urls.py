from . import views
from django.urls import path, include
from rest_framework import routers
# Create your views here.

router = routers.DefaultRouter()
router.register('tags',views.TagsView)
router.register('resource',views.ResourceView, basename="resource") #endpoint, view
router.register('course',views.CourseView)
router.register('profile',views.ProfileView)



urlpatterns = [
	path('',include(router.urls))
]