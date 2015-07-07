json.array!(@admin_classifications) do |admin_classification|
  json.extract! admin_classification, :id
  json.url admin_classification_url(admin_classification, format: :json)
end
