class DogBreed < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :dog_breed_group
end
