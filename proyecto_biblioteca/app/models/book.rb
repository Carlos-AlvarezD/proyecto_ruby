class Book < ApplicationRecord
	validates :titulo, :idioma,
	presence: { message: "Dato requerido" }
	validates :author, presence: { message: "El libro debe tener un autor" }
	validates :category , presence: { message: "El libro debe tener una categoria" }
	validates :editorial , presence: { message: "El libro debe tener una editorial" }
	validates :paginas, numericality: { only_integer: true, greater_than: 0,
	message: "El numero de paginas debe ser un dato numerico, entero, mayor que cero" }
	validates :titulo, length: { in: 5..50, message: "El titulo es demasioado corto o demasiado largo" }

	belongs_to :author
	belongs_to :category, required: false
	belongs_to :editorial, required: false

	has_many :borrowings
	has_many :users, through: :borrowings

	validates_associated :author
	validates_associated :category
	validates_associated :editorial
	validates_associated :borrowings
	validates_associated :users

	def self.libros_mas_prestados
		hash_aux = Hash.new
		Book.select(:id).each { |libro| hash_aux[libro.id] = libro.borrowings.size }
		max_prestamos = hash_aux.values.max
		hash_aux.select { |k,v| v == max_prestamos }.keys
	end
end
