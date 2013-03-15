json.array!(@members) do |member|
  json.extract! member, :email, :role_id
  json.url member_url(member, format: :json)
end