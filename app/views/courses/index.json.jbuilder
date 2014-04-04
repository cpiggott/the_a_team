json.array!(@courses) do |course|
  json.extract! course, :id, :number, :name, :description
  json.url course_url(course, format: :json)
end
