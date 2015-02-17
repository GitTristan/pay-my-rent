json.array!(@renters) do |renter|
  json.extract! renter, :id
  json.url renter_url(renter, format: :json)
end
