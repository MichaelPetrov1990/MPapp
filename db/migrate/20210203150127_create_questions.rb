class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.text :category, null: false
      t.text :sub_category, null: false
      t.references :questionnaire, null: true, foreign_key: true
      t.timestamps
    end
  end
end
