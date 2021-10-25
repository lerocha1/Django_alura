from django.contrib import admin
from .models import Receita

class ListandoReceitas(admin.ModelAdmin):
    list_display = ('id','nome_receita','categoria','tempo_preparo')
    list_display_links = ('id', 'nome_receita')
    search_fields = ('nome_receita',)
    list_filter = ('categoria',) #filtro na lateral direita por categorias
    list_per_page =  10 #lista quantos iten aparece no /admin do site!

admin.site.register(Receita, ListandoReceitas)
