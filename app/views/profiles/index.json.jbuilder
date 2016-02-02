json.array!(@profiles) do |profile|
  json.extract! profile, :id, :age, :school_address
  json.url profile_url(profile, format: :json)
end
