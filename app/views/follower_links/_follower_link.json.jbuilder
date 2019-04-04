json.extract! follower_link, :id, :follower_id, :followee_id, :created_at, :updated_at
json.url follower_link_url(follower_link, format: :json)
