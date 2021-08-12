class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
