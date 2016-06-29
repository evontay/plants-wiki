class AddTypeOfPropertyToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :type_of_property, :string
  end
end
