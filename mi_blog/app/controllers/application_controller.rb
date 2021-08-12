class ApplicationController < ActionController::Base
	before_action :require_login

	private

	def require_login
		unless logged_in?
			flash[:error] = "You must be logged in to access this section"
			rediect_to new_login_url
		end
		
	end
end
