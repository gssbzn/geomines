json.array!(@mines) do |mine|
  json.extract! mine, :name, :details, :latitude, :longitude
  json.url mine_url(mine, format: :json)
end
