class AttendSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :user
  has_one :event
end
