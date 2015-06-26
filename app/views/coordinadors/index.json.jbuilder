json.array!(@coordinadors) do |coordinador|
  json.extract! coordinador, :id, :nombre, :apellido, :foto, :twitter, :facebook, :correo, :linkd
  json.url coordinador_url(coordinador, format: :json)
end
