json.array!(@academics) do |academic|
  json.extract! academic, :id, :name, :description, :link
  json.url academic_url(academic, format: :json)
end
