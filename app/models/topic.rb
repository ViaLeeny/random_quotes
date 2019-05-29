class Topic < ApplicationRecord
  has_many :quotes
  has_many :contributions, through: :quotes
  has_many :users, through: :contributions
  has_many :sources, through: :quotes
  has_many :authors, through: :sources

  validates :name, presence: true
end
