class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :messages, :users
  has_many :messages
end
