require 'rails_helper'

RSpec.describe Article, type: :model do
	#pending "add some examples to (or delete) #{__FILE__}"
	it "Modelo valido con titulo y cuerpo" do
		articulo = Article.new(title: "Primer post",
								body: "Cuerpo del post")

		expect(articulo).to be_valid	
	end

	it "es invalido sin titulo" do 
		articulo = Article.new(title: nil,
								body: "Cuerpo del post")
		articulo.save
		expect(articulo.errors[:title]).to include("El titulo no puede ir vacio")
	end

	it "es invalido sin cuerpo (body)" do 
		articulo = Article.new(title: "Primer post",
									body: nil)
		articulo.save
		expect(articulo.errors[:body]).to include("El cuerpo del articulo no puede ir vacio")
	end

	it "modelo devuelve el titulo" do
		titulo = "Titulo a devolver" 
		articulo = Article.new(title: titulo,
								body: "Cuerpo del post")
		expect(articulo.title).to eq(titulo)
	end

	it "modelo devuelve contenido del articulo" do 
		body = "Cuerpo del articulo testeado"
		articulo = Article.create!(title: "Mi primer articulo",
								body: body)
		expect(articulo.body).to eq(body)
	end

	it "solo articulos de un autor en particular" do
		articulo1 = Article.create!(
									title: "Titulo de Ana",
									body: "Cuerpo del post",
									autor: "Ana")

		articulo2 = Article.create!(
									title: "Titulo de Ana 2",
									body: "Cuerpo del post",
									autor: "Ana")

		articulo3 = Article.create!(
									title: "Titulo de sofia",
									body: "Cuarpo del post",
									autor: "Sofi")

		articulo4 = Article.create!(
									title: "Titulo de Alejandro",
									body: "Cuarpo del post",
									autor: "Alejandro")

		expect(Article.articulos_por_autor("Ana")).to eq([articulo1, articulo2])

	end
end
