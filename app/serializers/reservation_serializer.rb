class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :user
  has_one :user
  has_one :restaurant
end
