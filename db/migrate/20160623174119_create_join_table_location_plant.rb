class CreateJoinTableLocationPlant < ActiveRecord::Migration[5.0]
  def change
    create_join_table :locations, :plants do |t|
      # t.index [:location_id, :plant_id]
      # t.index [:plant_id, :location_id]
    end
  end
end
