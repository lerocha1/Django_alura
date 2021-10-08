from django.shortcuts import render
from django.http import HttpResponse

from django.views import View

class MyView(View):

    def get(self, request):
        return render(request,'index.html')

def index(request):
    return render(request,'index.html')
    #return HttpResponse('<h1>Receitas</h1> <h2>Bem vindo</h2>')
