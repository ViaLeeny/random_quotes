class Source < ApplicationRecord
  belongs_to :author
  has_many :quotes
  has_many :contributions, through: :quotes
  has_many :users, through: :contributions
  has_many :topics, through: :quotes

  validates :title, presence: true


end
