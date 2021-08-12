class Author < ApplicationRecord
	
	#valida que cada autor tenga nombre
	#nacionalidad e idioma
	validates :nombre, :nacionalidad, :idioma,
	presence: { message: "Dato necesario" }
	#valida que el nombre de cada ator sea minimo 2,
	#maximo 50 caracteres
	validates :nombre, length: {minimum: 2,
	maximum: 50, message: "minimo 2, maximo 30" }
	#valida que la nacionalidad de cada autor 
	#sea entre 2 y 24 caracteres.
	validates :nacionalidad, length: { in: 2..25,
	message: "Minimo 2, maximo 25" }
	#valida que el registro de ganacias anuales
	#de cada autor sea numerico
	validates :ganancias_anuales,
	numericality: { message: "El dato debe ser numerico" }

	has_many :books
	#valida que cuando se actualice un libro
	#por medio de
	#la relacion entre un autor, tambien se
	#realicen las validaciones del modelo Book
	validates_associated :books
	
	def tiene_libros_mas_prestados?
		libros_mas_prestados = Book.libros_mas_prestados
		if self.books.exists?(id: libros_mas_prestados)
			id_coincidentes = self.book_ids & libros_mas_prestados
			self.books_find(id_coincidentes)
		else
			false
		end
	end
end
