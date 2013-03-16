json.array!(@answers) do |answer|
  json.extract! answer, :text, :from_member_id, :for_member_id, :question_id
  json.url answer_url(answer, format: :json)
end