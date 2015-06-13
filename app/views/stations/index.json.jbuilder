json.array!(@stations) do |station|
  json.extract! station, :id, :name, :mins_from_home
  json.url station_url(station, format: :json)
end
