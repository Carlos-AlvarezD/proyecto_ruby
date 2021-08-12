class TasksController < ApplicationController
	before_action :set_checklist
	before_action :set_checklist_task, only: [:show, :update, :destroy]

	# GET /checklists/:checklist_id/tasks
	def index
		json_response(@checklist.tasks)
	end

	# GET /checklist/:checklist_id/tasks/:id
	def show
		json_response(@task)
	end

	# POST /checklist/:checklist_id/tasks
	def create
		@checklist.tasks.create!(task_params)
		json_response(@checklist, :created)
	end

	# PUT /checklist/:checklist_id/tasks/:id
	def update
		@task.update(task_params)
		head :no_content
	end

	# DELETE /checklists/:checklist_id/tasks/:id
	def destroy
		@task.destroy
		head :no_content
	end

	private 

	def task_params
		params.permit(:nombre, :hecho)
	end

	def set_checklist
		@checklist = Checklist.find(params[:checklist_id])
	end

	def set_checklist_task
		@task = @checklist.tasks.find_by!(id: params[:id]) if @checklist
	end
end
