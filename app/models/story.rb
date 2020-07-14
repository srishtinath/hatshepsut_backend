class Story < ApplicationRecord
    has_many :user_stories
    has_many :stories, through: :user_stories

    has_many :rooms
end
