class AddOtherInfoToPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :other_info, :string
  end
end
