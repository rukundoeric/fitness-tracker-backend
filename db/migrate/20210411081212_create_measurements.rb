class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :value
      t.references :user, foreign_key: true
      t.references :things_to_measure, foreign_key: true

      t.timestamps
    end
  end
end
