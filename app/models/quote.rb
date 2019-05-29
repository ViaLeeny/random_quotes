class Quote < ApplicationRecord
  has_many :contributions
  has_many :users, through: :contributions
  belongs_to :source
  belongs_to :topic

  validates :content, presence: true




end
