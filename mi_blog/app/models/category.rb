class Category < ApplicationRecord
	validates :nombre, :descripcion, presence: { message: "Dato Requerido" }
	validates :nombre, length: { in: 3..25, message: "Nombre debe tener entre 3 y 25 caracteres" }

	has_many :articles
end
