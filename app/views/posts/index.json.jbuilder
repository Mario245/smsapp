json.array!(@posts) do |post|
  json.extract! post, :id, :from_phone_no, :to_phone_no, :body
  json.url post_url(post, format: :json)
end
