class RemoveImageFromPlant < ActiveRecord::Migration[5.0]
  def change
    remove_column :plants, :image, :string
  end
end
