json.array!(@trip_options) do |trip_option|
  json.extract! trip_option, :id, :leave_house_by, :train_leaves_at, :station_id
  json.url trip_option_url(trip_option, format: :json)
end
