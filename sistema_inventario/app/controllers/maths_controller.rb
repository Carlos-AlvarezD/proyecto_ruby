class MathsController < ApplicationController
	def mostrar_suma
		@suma = sumar(20, 30)	
	end
end
