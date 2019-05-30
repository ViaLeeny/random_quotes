class User < ApplicationRecord
  has_many :contributions
  has_many :quotes, through: :contributions
  has_many :sources, through: :quotes
  has_many :authors, through: :sources
  has_many :topics, through: :quotes

  validates :user_name, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence: true

  has_secure_password
end
