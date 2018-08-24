class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :office, optional: true
end
