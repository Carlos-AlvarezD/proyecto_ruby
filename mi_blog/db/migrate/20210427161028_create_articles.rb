class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :titulo
      t.string :contenido
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
