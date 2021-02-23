class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :questionnaire, null: false, foreign_key: true      
      t.references :question, null: false, foreign_key: true
      t.timestamps
    end
  end
end
