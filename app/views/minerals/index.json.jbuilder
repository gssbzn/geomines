json.array!(@minerals) do |mineral|
  json.extract! mineral, :name
  json.url mineral_url(mine, format: :json)
end
