class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :direccion
      t.string :observaciones
      t.string :telefono

      t.timestamps
    end
  end
end
