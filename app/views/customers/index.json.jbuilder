json.array!(@customers) do |customer|
  json.extract! customer, :username, :full_name, :email_address, :image_url
  json.url customer_url(customer, format: :json)
end
