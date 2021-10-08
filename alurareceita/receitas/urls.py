from django.urls import path

from .views import index, MyView

urlpatterns = [
    path('', MyView.as_view(), name='index')
]