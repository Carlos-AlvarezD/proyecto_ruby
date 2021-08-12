class EditorialsController < ApplicationController
    def index
        @editoriales = Editorial.all
    end

    def show
        @editorial = Editorial.find(params[:id])
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
