class RemoveCompagnyFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :compagny, :string
  end
end
