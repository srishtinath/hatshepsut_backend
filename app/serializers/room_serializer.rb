class RoomSerializer < ActiveModel::Serializer
  attributes :id, :story, :image_url, :users, :locations
  
  def locations
    object.locations.map do |location|
      ::LocationSerializer.new(location).attributes
    end
  end
end
