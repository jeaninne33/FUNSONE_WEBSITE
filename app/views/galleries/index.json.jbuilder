json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :nombre, :descripcion, :lugar, :fecha
  json.url gallery_url(gallery, format: :json)
end
