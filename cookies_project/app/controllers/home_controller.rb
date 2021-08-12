class HomeController < ApplicationController
	def set_cookies
		persona = Persona.find(1)
		cookies[:nombre_persona] = persona.nombre
		cookies[:telefono_persona] = persona.telefono
		cookies[:direccion_persona] = persona.direccion

	end

	def show_cookies
		@nombre = cookies[:nombre_persona]
		@telefono = cookies[:telefono_persona]
		@direccion = cookies[:direccion_persona]
	end

	"""
	Forma incorrecta en el libro, sintaxis inadecuada
	def delete_cookies
		cookies.delete :nombre_persona
		cookies.delete :telefono_persona
		cookies.delete :direccion_persona
	end
	"""
	def delete_cookies
		cookies[:nombre_persona].delete 
		cookies[:telefono_persona].delete 
		cookies[:direccion_persona].delete 
	end
end
