class AddMaxvalueToThingsToMeasure < ActiveRecord::Migration[6.1]
  def change
    add_column :things_to_measures, :maxValue, :string
  end
end
