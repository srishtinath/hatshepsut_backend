class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :user_rooms
    has_one :clue_list
    
end