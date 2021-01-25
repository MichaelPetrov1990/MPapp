class CreateQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnaires do |t|
      t.text :questions
      t.string :category

      t.timestamps
    end
  end
end
