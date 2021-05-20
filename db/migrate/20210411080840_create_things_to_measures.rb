class CreateThingsToMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :things_to_measures do |t|
      t.string :icon, default: 'default'
      t.string :name
      t.string :unit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
