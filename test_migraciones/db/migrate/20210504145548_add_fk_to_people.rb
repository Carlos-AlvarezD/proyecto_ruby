class AddFkToPeople < ActiveRecord::Migration[6.1]
	def change
		add_foreign_key :people, :countries
	end
end
