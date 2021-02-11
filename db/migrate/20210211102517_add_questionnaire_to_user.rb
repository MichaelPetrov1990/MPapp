class AddQuestionnaireToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :questionnaire, null: true, foreign_key: true
  end
end
