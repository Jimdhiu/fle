class CreateProceduresFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :procedures_files do |t|
      t.references :procedure, foreign_key: true
      t.references :document, foreign_key: true
      t.timestamps
    end
  end
end
