class Book < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :book_hashtag_relations
  has_many :hashtags, through: :book_hashtag_relations

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

　after_create do
　  book = Book.find_by(id: self.id)
　  hashtags  = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
　  book.hashtags = []
　  hashtags.uniq.map do |hashtag|
　    #ハッシュタグは先頭の'#'を外した上で保存
　    tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
　    book.hashtags << tag
　  end
　end
　
　before_update do 
    photo = Photo.find_by(id: self.id)
    photo.hashtags.clear
    hashtags = self.caption.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hashname: hashtag.downcase.delete('#'))
      photo.hashtags << tag
    end
  end

end
end