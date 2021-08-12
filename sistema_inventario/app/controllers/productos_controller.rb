class ProductosController < ApplicationController
    def index
      @titulo = "TItulo index"
      @contenido = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget nunc 
      sollicitudin, tristique leo ac, facilisis massa. Orci varius natoque penatibus et magnis dis parturient 
      montes, nascetur ridiculus mus. Quisque velit augue, ullamcorper at lacinia non, tempor ultricies ante. 
      Vestibulum ac euismod metus, eget bibendum metus. Morbi tempus egestas eros nec fermentum. Sed ornare 
      odio vitae enim laoreet, eget laoreet neque consectetur. Sed vehicula felis ut libero imperdiet luctus. 
      Vestibulum mattis pellentesque fringilla. Proin id lorem vel tellus feugiat facilisis vitae in nulla. 
      Sed semper commodo quam, vitae fermentum massa congue sed. Pellentesque et sodales neque, ultrices 
      aliquet est. Duis pellentesque orci mattis, blandit nisi in, tempor augue. Nunc hendrerit, ante id 
      porttitor maximus, metus sapien aliquet nibh, non dictum augue urna sagittis enim. Nam eros risus, 
      mattis in sem in, molestie commodo tortor. Nam convallis scelerisque metus eu cursus. "
    end

    def show
        productos = {"1" => "Leche","2" => "Cereal","3" => "Vegetales"}

        @titulo = "Titulo Show"
        
        id = params[:id]
        @producto = productos[id]
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
