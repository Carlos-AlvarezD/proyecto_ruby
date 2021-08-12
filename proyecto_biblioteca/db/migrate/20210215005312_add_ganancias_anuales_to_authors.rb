class AddGananciasAnualesToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :ganancias_anuales, :decimal
  end
end
