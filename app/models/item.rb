class Item < ApplicationRecord
    has_many :item_clue_lists
    has_many :clue_lists, through: :item_clue_lists

    belongs_to :location
end
