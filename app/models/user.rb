class User < ApplicationRecord
  has_many :contributions
  has_many :quotes, through: :contributions
  has_many :books, through: :quotes
  has_many :authors, through: :books
  has_many :topics, through: :quotes
end
