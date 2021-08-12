class AuthorsController < ApplicationController
    layout "layout_author"

    def index
        @autores = Author.all
        #render layout:"layout_author"
    end

    def show
        @author = Author.find(params[:id])
    end

    def new
        @author = Author.new
    end

    def create
        #se recoge el hash con los datos del autor
        datos_autor = params[:author]

        #se recoge cada uno de los datos del autor
        nombre_autor = datos_autor[:nombre]
        nac_autor = datos_autor[:nacionalidad]
        idioma_autor = datos_autor[:idioma]
        ganancias_autor = datos_autor[:ganancias_anuales]

        #Con base a los datos llegados como parametro
        #Se crea un nuevo modelo de Author
        @author = Author.new(nombre: nombre_autor, nacionalidad: nac_autor, idioma: idioma_autor, 
            ganancias_anuales:ganancias_autor)

        #Por ultimo, el modelo recientemente creado
        #se guarda en la base de datos
        @author.save
        redirect_to "/authors/#{@author.id}"
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])

        datos_autor = params[:author]

        nombre_autor    = datos_autor[:nombre]
        nac_autor       = datos_autor[:nacionalidad]
        idioma_autor    = datos_autor[:idioma]
        ganancias_autor = datos_autor[:ganancias_anuales]

        if @author.update(nombre: nombre_autor, nacionalidad: nac_autor, idioma: idioma_autor, 
            ganancias_anuales:ganancias_autor)
            redirect_to "/authors/#{@author.id}"
        else
            render :edit
        end
    end

    def destroy
        @author = Author.find(params[:id])

        @author.destroy
        redirect_to "/authors/"
    end
end
