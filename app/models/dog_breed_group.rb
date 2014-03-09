class DogBreedGroup < ActiveRecord::Base
  validates :name, presence: true
end
