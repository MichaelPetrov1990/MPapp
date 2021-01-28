class AddQuestion1ToQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    add_column :questionnaires, :question1, :text
  end
end
