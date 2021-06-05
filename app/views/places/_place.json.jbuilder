json.extract! place, :id, :name, :address, :latitude, :logitude, :created_at, :updated_at
json.url place_url(place, format: :json)
