json.extract! comment, :id, :artist_id, :painting_id, :content, :rating, :created_at, :updated_at
json.url comment_url(comment, format: :json)
