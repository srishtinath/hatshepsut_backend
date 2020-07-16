class Room < ApplicationRecord
    has_many :locations
    has_one :character
    belongs_to :story

    has_many :user_rooms
    has_many :users, through: :user_rooms
end
