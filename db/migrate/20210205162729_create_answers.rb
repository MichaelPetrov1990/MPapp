class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :rating
      t.integer :weight, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :questionnaire, null: false, foreign_key: true      
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
