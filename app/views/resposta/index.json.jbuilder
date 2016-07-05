json.array!(@resposta) do |respostum|
  json.extract! respostum, :id, :descricao
  json.url respostum_url(respostum, format: :json)
end
