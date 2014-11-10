json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :image, :user_id
  json.url profile_url(profile, format: :json)
end
