class CreateScorecards < ActiveRecord::Migration[6.0]
  def change
    create_table :scorecards do |t|
      t.text :answers
      t.integer :score
      t.string :red_flags
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
