class CharacterSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :chats, :room, :image_url
    # has_many :chats
    def chats
        object.chats.map do |chat|
            ::ChatSerializer.new(chat).attributes
        end
    end
  end
  