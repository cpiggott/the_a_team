json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :description, :cis_page, :personal_page, :image
  json.url staff_url(staff, format: :json)
end
