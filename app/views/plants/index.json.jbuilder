json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :latin_name, :family, :other_name, :origin, :physical_char, :flavour_profile, :medical_properties, :thrives_in
  json.url plant_url(plant, format: :json)
end
