class ClueList < ApplicationRecord
    has_many :item_clue_lists
    has_many :items, through: :item_clue_lists
    belongs_to :user
end
