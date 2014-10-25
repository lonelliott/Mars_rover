json.array!(@grids) do |grid|
  json.extract! grid, :id, :length, :width
  json.url grid_url(grid, format: :json)
end
