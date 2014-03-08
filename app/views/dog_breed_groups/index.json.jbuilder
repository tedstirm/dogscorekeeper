json.array!(@dog_breed_groups) do |dog_breed_group|
  json.extract! dog_breed_group, :id, :name
  json.url dog_breed_group_url(dog_breed_group, format: :json)
end
