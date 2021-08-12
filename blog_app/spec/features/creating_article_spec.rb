require 'rails_helper'

RSpec.feature "Create Articles" do 
	scenario "Se intenta crear un articulo sin datos" do
		visit "/"
		click_link "New Article"

		fill_in "Title", with: ""
		fill_in "Body", with: ""

		click_button "Create Article"
		
		expect(page).to have_content("Error: El articulo no ha sido creado")
		expect(page).to have_content("El titulo no puede ir vacio")
		expect(page).to have_content("El cuerpo del articulo no puede ir vacio")

		#expect(page.current_path).to eq(articles_path)
	end
end