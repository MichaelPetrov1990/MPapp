class DropScorecardsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :scorecards
  end
end
