class CreateQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnaires do |t|
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true
      t.integer :score
      t.timestamps
    end
  end
end
