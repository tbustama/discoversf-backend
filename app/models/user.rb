class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates_presence_of :bio
    validates_presence_of :full_name
    has_many :reservations
    has_many :attends
    has_many :restaurants, through: :reservations
    has_many :events, through: :attends
end
