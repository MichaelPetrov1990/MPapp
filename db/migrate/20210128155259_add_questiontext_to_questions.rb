class AddQuestiontextToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :questiontext, :text
  end
end
