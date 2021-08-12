class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.string :nombre
      t.string :creado_por

      t.timestamps
    end
  end
end
