class CreatePros < ActiveRecord::Migration[5.0]
  def change
    create_table :pros do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :function

      t.timestamps
    end
  end
end
