json.array!(@mocroposts) do |mocropost|
  json.extract! mocropost, :content, :user_id
  json.url mocropost_url(mocropost, format: :json)
end