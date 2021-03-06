json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :image, :description
  json.url exercise_url(exercise, format: :json)
end
