json.array!(@premium_packages) do |premium_package|
  json.extract! premium_package, :id, :user_id, :price, :customer_id
  json.url premium_package_url(premium_package, format: :json)
end
