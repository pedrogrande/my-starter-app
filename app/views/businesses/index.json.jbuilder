json.array!(@businesses) do |business|
  json.extract! business, :id, :logo, :background_image, :name, :info, :street, :suburb, :postcode, :state, :country, :phone, :email, :twitter, :facebook, :linkedin, :latitude, :longitude
  json.url business_url(business, format: :json)
end
