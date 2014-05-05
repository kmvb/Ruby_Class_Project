json.array!(@workouts) do |workout|
  json.extract! workout, :id, :completed_at, :title, :description, :user_id
  json.url workout_url(workout, format: :json)
end
