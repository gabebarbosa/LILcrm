json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cnpj, :contato, :telefone, :email, :cidade
  json.url cliente_url(cliente, format: :json)
end
