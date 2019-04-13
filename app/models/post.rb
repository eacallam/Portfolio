class Post < ApplicationRecord
  belongs_to :category
  has_many :comments
  validates :title, :content, :category_id, presence: true
  validates :title, length: {minimum: 5}
  mount_uploader :image, ImageUploader
end
