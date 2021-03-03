class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :text, :user, :created_at
  has_one :user
end
