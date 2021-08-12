class Admin::UsersController < ApplicationController
    def index
        @usuarios = User.all
    end

    def show
        @usuario= User.find(params[:id])
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
