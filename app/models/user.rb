class User < ApplicationRecord
    has_many :user_stories
    has_many :stories, through: :user_stories
    has_many :user_rooms
    has_many :rooms, through: :user_rooms
end
