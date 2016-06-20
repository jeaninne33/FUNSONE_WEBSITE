json.array!(@institucions) do |institucion|
  json.extract! institucion, :id, :nombre, :descripcion, :mision, :vision, :organigrama, :objetivos, :logo, :tipo, :foto1, :foto2, :foto3, :foto4, :foto5
  json.url institucion_url(institucion, format: :json)
end
