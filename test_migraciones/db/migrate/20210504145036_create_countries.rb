class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :nombre
      t.string :numero_habitantes
      t.string :nombre_presidente
      t.string :descripcion

      t.timestamps
    end
  end
end
