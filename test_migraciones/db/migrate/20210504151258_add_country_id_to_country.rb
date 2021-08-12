class AddCountryIdToCountry < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :country_id, :int
  end
end
