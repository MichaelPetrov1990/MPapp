class RemoveQuestion1FromQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    remove_column :questionnaires, :question1, :text
  end
end
