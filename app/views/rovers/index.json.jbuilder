json.array!(@rovers) do |rover|
  json.extract! rover, :id, :r1_start, :r1_start_direction, :r1_commands, :r2_start, :r2_start_direction, :r2_commands
  json.url rover_url(rover, format: :json)
end
