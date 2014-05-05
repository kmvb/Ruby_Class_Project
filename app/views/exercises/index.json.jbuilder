json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :title, :unit
  json.url exercise_url(exercise, format: :json)
end
