class AddQuestion3ToQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    add_column :questionnaires, :question3, :text
  end
end

