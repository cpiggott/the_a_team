json.array!(@student_projects) do |student_project|
  json.extract! student_project, :id, :student, :time, :topic, :description
  json.url student_project_url(student_project, format: :json)
end
