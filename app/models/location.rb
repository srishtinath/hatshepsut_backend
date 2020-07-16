class Location < ApplicationRecord
    has_many :items
    belongs_to :room

    has_many :user_locations
    has_many :users, through: :user_locations
end
