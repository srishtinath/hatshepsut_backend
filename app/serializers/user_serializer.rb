class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :clue_list

    def clue_list
        object.clue_list do  |clue_list|
            ::ClueListSerializer.new(clue_list).attributes
        end       
    end
    
end