class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :desk, optional: true
end
