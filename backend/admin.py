from django.contrib import admin
from . models import *

# Register your models here.
admin.site.register(Tags) 
admin.site.register(Resource) 
admin.site.register(Course) 
admin.site.register(Interests)
admin.site.register(Profile)
