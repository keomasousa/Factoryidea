json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :description, :classification_id, :user_id
  json.url idea_url(idea, format: :json)
end
