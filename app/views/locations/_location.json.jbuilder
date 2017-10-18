json.extract! location, :id, :user_id, :address, :city, :postcode, :country, :longitude, :latitude, :created_at, :updated_at
json.url location_url(location, format: :json)
