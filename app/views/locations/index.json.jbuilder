json.array!(@locations) do |location|
  json.extract! location, :id, :site_name
  json.url location_url(location, format: :json)
end
