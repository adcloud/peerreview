json.array!(@questions) do |question|
  json.extract! question, :text, :section, :fromrole_id, :forrole_id
  json.url question_url(question, format: :json)
end