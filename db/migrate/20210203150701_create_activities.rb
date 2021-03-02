class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.text :category, null: false
      t.text :sub_category, null: false
      t.text :name , null: false
      t.text :description, optional: true
      t.references :plan, foreign_key: true, null: false
      t.timestamps
    end
  end
end