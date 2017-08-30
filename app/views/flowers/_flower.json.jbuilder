json.extract! flower, :id, :title, :description, :votes, :created_at, :updated_at
json.url flower_url(flower, format: :json)
