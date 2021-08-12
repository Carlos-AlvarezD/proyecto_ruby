class AddCountryIdToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :country_id, :int
  end
end
