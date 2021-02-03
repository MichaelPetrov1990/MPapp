class CreateAreasOfInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :areas_of_interests do |t|
      t.string :area1
      t.string :area2
      t.string :area3
      t.references :questionnaire, null: false, foreign_key: true

      t.timestamps
    end
  end
end
