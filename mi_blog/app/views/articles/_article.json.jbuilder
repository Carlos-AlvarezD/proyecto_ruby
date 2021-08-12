json.extract! article, :id, :titulo, :contenido, :category_id, :created_at, :updated_at
json.url article_url(article, format: :json)
