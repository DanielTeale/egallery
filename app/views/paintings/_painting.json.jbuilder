json.extract! painting, :id, :artist_id, :date_created, :genre, :copyright, :created_at, :updated_at
json.url painting_url(painting, format: :json)
