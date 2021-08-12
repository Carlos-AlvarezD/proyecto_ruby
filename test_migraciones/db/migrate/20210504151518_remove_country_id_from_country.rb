class RemoveCountryIdFromCountry < ActiveRecord::Migration[6.1]
  def change
    remove_column :countries, :country_id, :int
  end
end
