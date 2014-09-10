json.array!(@ads) do |ad|
  json.extract! ad, :id, :name, :content, :image, :belongs_to
  json.url ad_url(ad, format: :json)
end
