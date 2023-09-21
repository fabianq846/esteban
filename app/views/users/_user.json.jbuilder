json.extract! user, :id, :nombre, :email, :password_digest, :foto, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
json.foto url_for(user.foto)
