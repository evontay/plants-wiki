class AddEdiblePartToPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :edible_part, :string
  end
end
