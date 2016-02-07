json.array!(@controllers) do |controller|
  json.extract! controller, :id, :like, :name
  json.url controller_url(controller, format: :json)
end
