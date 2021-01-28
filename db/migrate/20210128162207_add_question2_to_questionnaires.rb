class AddQuestion2ToQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    add_column :questionnaires, :question2, :text
  end
end
