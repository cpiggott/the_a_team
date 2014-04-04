json.array!(@employments) do |employment|
  json.extract! employment, :id, :position, :company, :description
  json.url employment_url(employment, format: :json)
end
