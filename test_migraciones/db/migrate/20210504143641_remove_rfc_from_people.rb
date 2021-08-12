class RemoveRfcFromPeople < ActiveRecord::Migration[6.1]
  def change
    remove_column :people, :rfc, :string
  end
end
