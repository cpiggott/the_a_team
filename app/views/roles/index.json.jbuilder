json.array!(@roles) do |role|
  json.extract! role, :id, :r
  json.url role_url(role, format: :json)
end
