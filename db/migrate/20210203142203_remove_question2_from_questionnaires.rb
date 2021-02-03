class RemoveQuestion2FromQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    remove_column :questionnaires, :question2, :text
  end
end
