class AddRfcToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :rfc, :string
  end
end
