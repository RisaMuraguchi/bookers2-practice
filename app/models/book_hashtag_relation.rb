class BookHashtagRelation < ApplicationRecord
  belongs_to :book
  belongs_to :hashtag
  with_options presence: true do
    validates :book_id
    validates :hashtag_id
  end
end
