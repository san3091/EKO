json.array!(@phases) do |phase|
  json.extract! phase, :id, :description
  json.url phase_url(phase, format: :json)
end
