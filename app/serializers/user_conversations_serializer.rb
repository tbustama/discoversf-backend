class UserConversationsSerializer < ActiveModel::Serializer
  attributes :id, :user, :conversation
end
