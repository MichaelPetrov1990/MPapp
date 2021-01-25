class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :top_priorities
      t.string :key_activities
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
