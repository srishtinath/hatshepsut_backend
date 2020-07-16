class Character < ApplicationRecord
    has_many :chats
    belongs_to :room

    has_many :user_characters
    has_many :users, through: :user_characters
end
