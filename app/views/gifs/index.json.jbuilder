json.array!(@gifs) do |gif|
  json.extract! gif, :id, :title, :url, :user_id
  json.url gif_url(gif, format: :json)
end
