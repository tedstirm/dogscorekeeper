json.array!(@states) do |state|
  json.extract! state, :id, :name, :alpha2, :country_id
  json.url state_url(state, format: :json)
end
