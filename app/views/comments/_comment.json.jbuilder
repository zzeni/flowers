json.extract! comment, :id, :flower_id, :author, :body, :vote, :created_at, :updated_at
json.url comment_url(comment, format: :json)
