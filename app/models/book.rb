class Book < ApplicationRecord
  belongs_to :category
  belongs_to :publisher

  has_many :book_authors
  has_many :authors, through: :book_authors

  validates_presence_of :title, :price, :published, :ISBN
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
