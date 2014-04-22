json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :time, :description
  json.url club_url(club, format: :json)
end
