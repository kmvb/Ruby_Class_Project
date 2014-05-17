json.array!(@profiles) do |profile|
  json.extract! profile, :id, :profile_image_url, :location, :gender, :email, :date_of_birth, :user_id
  json.url profile_url(profile, format: :json)
end
