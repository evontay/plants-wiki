class AddOtherInfoToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :other_info, :string
  end
end
