from . import views
from django.urls import path, include
from rest_framework import routers
# Create your views here.

router = routers.DefaultRouter()
router.register('tags',views.TagsView, basename="tags")
router.register('resource',views.ResourceView, basename="resource") #endpoint, view
router.register('course',views.CourseView, basename="course")
router.register('profile',views.ProfileView, basename="profile")

for url in router.urls:
	print(url)

urlpatterns = [
	path('',include(router.urls)),
    path('register/',views.RegistrationView, name='backend-registration')
]
