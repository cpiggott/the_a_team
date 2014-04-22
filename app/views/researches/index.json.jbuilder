json.array!(@researches) do |research|
  json.extract! research, :id, :name, :description, :url
  json.url research_url(research, format: :json)
end
