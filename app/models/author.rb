class Author < ApplicationRecord
has_many :books
has_many :quotes, through: :books
has_many :contributions, through: :quotes
has_many :users, through: :contributions
has_many :topics, through: :quotes
end
