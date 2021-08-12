class Article < ApplicationRecord
	validates :title, presence: {message: "El titulo no puede ir vacio"}
	validates :body, presence: {message: "El cuerpo del articulo no puede ir vacio"}

	def self.articulos_por_autor(autor)
		Article.where(autor: autor)
	end
end
