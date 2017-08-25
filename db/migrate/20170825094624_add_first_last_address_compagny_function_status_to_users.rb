class AddFirstLastAddressCompagnyFunctionStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :compagny, :string
    add_column :users, :function, :string
    add_column :users, :status, :string
  end
end
