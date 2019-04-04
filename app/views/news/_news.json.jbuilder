json.extract! news, :id, :title, :summary, :content, :created_at, :updated_at
json.url news_url(news, format: :json)
