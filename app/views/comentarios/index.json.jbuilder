json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :user, :descricao, :atendimento_id
  json.url comentario_url(comentario, format: :json)
end
