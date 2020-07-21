class CharacterSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :chats, :room
  end
  