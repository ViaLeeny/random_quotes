class Quote < ApplicationRecord
  has_many :contributions
  has_many :users, through: :contributions
  belongs_to :book
  belongs_to :topic
end
