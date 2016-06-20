json.array!(@paintings) do |painting|
  json.extract! painting, :id, :nombre, :gallery_id, :foto
  json.url painting_url(painting, format: :json)
end
