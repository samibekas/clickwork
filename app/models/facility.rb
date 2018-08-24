class Facility < ApplicationRecord
  has_many :office_facilities, dependent: :destroy
end
