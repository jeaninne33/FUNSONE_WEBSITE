json.array!(@noticia) do |noticium|
  json.extract! noticium, :id, :titulo, :categoria, :foto, :mensaje
  json.url noticium_url(noticium, format: :json)
end
