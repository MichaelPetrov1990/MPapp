class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :type
      t.string :current_capability
      t.references :areas_of_interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end