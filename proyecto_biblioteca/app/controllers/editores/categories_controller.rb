class Editores::CategoriesController < ApplicationController
    def index
        @categorias = Category.all
    end

    def show
        @categoria = Category.find(params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def delete
    end
end
