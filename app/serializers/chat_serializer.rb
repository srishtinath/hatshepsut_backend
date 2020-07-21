class ChatSerializer < ActiveModel::Serializer
    attributes :id, :response, :chat_options
end