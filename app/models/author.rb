class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :books_authors
end
