class AddImageToPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :image, :string
  end
end