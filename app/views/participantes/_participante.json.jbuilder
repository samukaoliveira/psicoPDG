json.extract! participante, :id, :nome, :email, :telefone, :created_at, :updated_at
json.url participante_url(participante, format: :json)
