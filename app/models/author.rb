class Author < ApplicationRecord
has_many :sources
has_many :quotes, through: :sources
has_many :contributions, through: :quotes
has_many :users, through: :contributions
has_many :topics, through: :quotes


def number_of_quotes_by_author
  author.quotes.length
end


def self.most_prolific
  self.all.max_by{|author| author.quotes.length}
end

def self.top_three
  self.all.max_by(3){|author| author.quotes.length}
end

def self.all_sorted_by_authors
  Author.all.sort do
    |author_a, author_b|
    author_b.name <=> author_a.name
  end
end


end
