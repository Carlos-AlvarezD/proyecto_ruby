class ItemsController < ApplicationController
	before_action :set_checklist
	before_action :set_checklist_item, only: [:show, :update, :destroy]

	# GET /checklists/:checklist_id/items
	def index
		json_response(@checklist.items)
	end

	# GET /checklist/:checklist_id/items/:id
	def show
		json_response(@item)
	end

	# POST /checklist/:checklist_id/items
	def create
		@checklist.items.create!(item_params)
		json_response(@checklist, :created)
	end

	# PUT /checklist/:checklist_id/items/:id
	def update
		@item.update(items_params)
		head :no_content
	end

	# DELETE /checklists/:checklist_id/items/:id
	def destroy
		@item.destroy
		head :no_content
	end

	private 

	def items_params
		params.permit(:name, :done)
	end

	def set_checklist
		@checklist = Checklist.find(params[:checklist_id])
	end

	def set_cheklist_items
		@item = @checklist.items.find_by!(id: params[:id]) if @checklist
	end
end
