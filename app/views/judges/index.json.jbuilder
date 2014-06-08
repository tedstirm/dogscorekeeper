json.array!(@judges) do |judge|
  json.extract! judge, :id, :first_name, :last_name, :street, :city, :state_id, :country_id, :number, :zip
  json.url judge_url(judge, format: :json)
end
