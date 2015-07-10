json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :objetivo, :requisito, :tipo, :contactos
  json.url tipo_url(tipo, format: :json)
end
