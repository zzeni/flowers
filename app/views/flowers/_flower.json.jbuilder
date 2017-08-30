
json.id           flower.id
json.title        flower.title
json.description  flower.description
json.votes        flower.votes

json.picture do
  json.small    flower.picture.thumb('100x100#').url
  json.medium   flower.picture.thumb('400x260#').url
  json.large    flower.picture.thumb('800x600#').url
end if flower.picture

json.created_at   flower.created_at
json.updated_at   flower.updated_at

json.url flower_url(flower, format: :json)
