class User < ApplicationRecord
    has_one :clue_list
    
    has_many :user_stories
    has_many :stories, through: :user_stories

    has_many :user_rooms
    has_many :rooms, through: :user_rooms

    has_many :user_locations
    has_many :locations, through: :user_locations

    has_many :user_characters
    has_many :characters, through: :user_characters
end
