json.array!(@items) do |item|
  json.extract! item, :id, :url
  json.url item_url(item, format: :json)
end
