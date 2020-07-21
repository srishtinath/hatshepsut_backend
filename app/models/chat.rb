class Chat < ApplicationRecord
    belongs_to :character
    has_many :chat_options
end
