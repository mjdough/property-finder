json.array!(@listings) do |listing|
  json.extract! listing, :id, :mlscode, :address
  json.url listing_url(listing, format: :json)
end
