class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image
#これにより、画像が存在しなければテキストが必要となり、画像があればテキストは不要になりました。
  validates :content, presence: true, unless: :was_attached?
  def was_attached?
    self.image.attached?
  end
 #これにより、画像が存在しなければテキストが必要となり、画像があればテキストは不要になりました。
end
