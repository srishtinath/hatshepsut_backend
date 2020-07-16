class ItemClueList < ApplicationRecord
    belongs_to :item
    belongs_to :clue_list
end
