class RemoveQuestion3FromQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    remove_column :questionnaires, :question3, :text
  end
end
