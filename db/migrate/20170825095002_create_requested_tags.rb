class CreateRequestedTags < ActiveRecord::Migration[5.0]
  def change
    create_table :requested_tags do |t|
      t.references :procedure, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
