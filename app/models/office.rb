class Office < ApplicationRecord
  belongs_to :user
  has_many :office_facilities, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :facilities, through: :office_facilities
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Event', 'Meeting', 'Coworking']
  CITIES = []
  Office.all.each do |office|
    CITIES << office.city
  end
  CITIES = CITIES.uniq

  include PgSearch
  pg_search_scope :search_by_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
