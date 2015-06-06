json.array!(@stations) do |station|
  json.extract! station, :id, :name, :minsFromHome
  json.url station_url(station, format: :json)
end
