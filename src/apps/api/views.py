from django.shortcuts import render

# Create your views here.

from rest_framework.viewsets import ModelViewSet
from apps.blog.models import BlogModel
from apps.api.serializers import UsersModelSerializer, BlogModelSerializer
from apps.users.models import UsersModel

class BlogModelViewSet(ModelViewSet):
    queryset = BlogModel.objects.all()
    serializer_class = BlogModelSerializer

class UsersModelViewSet(ModelViewSet):
    queryset = UsersModel.objects.all()
    serializer_class = UsersModelSerializer