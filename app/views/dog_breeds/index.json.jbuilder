json.array!(@dog_breeds) do |dog_breed|
  json.extract! dog_breed, :id, :name, :dog_breed_group_id
  json.url dog_breed_url(dog_breed, format: :json)
end
