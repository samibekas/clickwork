class Office < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :desks
  has_many :bookings, through: :desks
  mount_uploader :photo, PhotoUploader
end
