class Article < ApplicationRecord
	validates :titulo, :contenido, presence: { message: "Dato Requerido" }
	validates :titulo, length: { in: 3..25, message: "Nombre debe tener entre 3 y 25 caracteres" }
    
  	belongs_to :category
  	has_many :comments
end
