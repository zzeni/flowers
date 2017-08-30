json.id         comment.id
json.flower_id  comment.flower_id
json.author     comment.author
json.body       comment.body
json.vote       comment.vote
json.created_at comment.created_at
json.updated_at comment.updated_at
json.url        flower_comment_url(comment.flower, comment, format: :json)
