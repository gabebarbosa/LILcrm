json.array!(@atendimentos) do |atendimento|
  json.extract! atendimento, :id, :assunto, :descricao, :status
  json.url atendimento_url(atendimento, format: :json)
end
