class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :items, :positionX, :positionY, :size
end
