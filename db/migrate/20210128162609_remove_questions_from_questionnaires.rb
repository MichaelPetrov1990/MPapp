class RemoveQuestionsFromQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    remove_column :questionnaires, :questions, :text
  end
end
