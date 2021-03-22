class CreateImportances < ActiveRecord::Migration[6.0]
  def change
    create_table :importances do |t|
      t.integer :score
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
