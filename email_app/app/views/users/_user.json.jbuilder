json.extract! user, :id, :nombre, :email, :login, :created_at, :updated_at
json.url user_url(user, format: :json)
