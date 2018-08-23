class Office < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :desks
  has_many :bookings, through: :desks
  has_many :office_facilities
  has_many :facilities, through: :office_facilities
  mount_uploader :photo, PhotoUploader
end
