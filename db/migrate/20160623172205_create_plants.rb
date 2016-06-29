class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :latin_name
      t.string :family
      t.string :other_name
      t.string :origin
      t.string :physical_char
      t.string :flavour_profile
      t.string :medical_properties
      t.string :thrives_in

      t.timestamps
    end
  end
end
