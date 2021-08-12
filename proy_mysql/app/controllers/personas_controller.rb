class PersonasController < ApplicationController
	before_action :cb_numero_en_la_sesion
	def new
  		@persona = Persona.new
  	end

	def create
		@persona = Persona.create(persona_params)
		redirect_to @persona
	end

	def edit
		@persona = Persona.find(params[:id])
	end

	def update
		@persona = Persona.update(persona_params)
	end

	private
		def persona_params
			params.require(:persona).permit(:nombre, :direccion)
		end

		def cb_numero_en_la_sesion
			if session[:numero_sesion].nil?
				session[:numero_sesion] = 1
			else
				session[:numero_sesion] += 1
			end
			@num_sesion = session[:numero_sesion]
		end
end

