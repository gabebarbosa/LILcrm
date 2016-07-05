json.array!(@tipoatendimentos) do |tipoatendimento|
  json.extract! tipoatendimento, :id, :descricao
  json.url tipoatendimento_url(tipoatendimento, format: :json)
end
