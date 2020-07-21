class CharacterSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :chats, :room
    # has_many :chats
    def chats
        object.chats.map do |chat|
            ::ChatSerializer.new(chat).attributes
        end
    end
  end
  