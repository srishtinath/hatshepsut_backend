class UserSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_one :clue_list
    
end