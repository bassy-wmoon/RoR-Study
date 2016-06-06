json.array!(@smartdevices) do |smartdevice|
  json.extract! smartdevice, :id, :device_kind, :device_model, :buy_date, :ammount
  json.url smartdevice_url(smartdevice, format: :json)
end
