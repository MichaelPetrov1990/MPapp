class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :body
      t.text :category
      t.references :questionnaire, null: false, foreign_key: true
      t.timestamps
    end
  end
end
