json.array!(@caracteristicas) do |caracteristica|
  json.extract! caracteristica, :id, :descricao
  json.url caracteristica_url(caracteristica, format: :json)
end
