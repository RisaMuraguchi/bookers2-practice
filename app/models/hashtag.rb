class Hashtag < ApplicationRecord
  validates :hashname, presence: true, length: { maximum:99}
  has_many :book_hashtag_relations
  has_many :books, through: :book_hashtag_relations
end
