class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :nombre
      t.boolean :hecho
      t.references :checklist, foreign_key: true

      t.timestamps
    end
  end
end
