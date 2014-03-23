class State < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :alpha2, presence: true
  belongs_to :country
  validates :country_id, presence: true
end
