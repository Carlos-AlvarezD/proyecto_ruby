class ChecklistsController < ApplicationController
	before_action :set_checklist, only: [:show, :update, :destroy]

	def index
		@checklists = Checklist.all
		json_response(@checklists)
	end

	# POST /checklist
	def create
		@checklist = Checklist.create!(checklist_params)
		json_response(@checklist, :created)
	end

	# GET /checklists/:id
	def show 
		json_response(@checklist)
	end

	# PUT /checklists/:id
	def update 
		@checklist.update(checklist_params)
		head :no_content
	end

	# DELETE /checklist/:id
	def destroy 
		@checklist.destroy
		head :no_content
	end
	
	private

	def checklist_params
		#whitelist params
		params.permit(:nombre, :creado_por) 
	end
	
	def set_checklist
		@checklist = Checklist.find(params[:id]) 
	end
end
