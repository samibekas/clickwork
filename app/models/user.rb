class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offices
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
