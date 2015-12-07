json.array!(@bands) do |band|
  json.extract! band, :id, :name, :image, :description
  json.url band_url(band, format: :json)
end
