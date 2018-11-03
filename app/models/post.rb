class Post < ApplicationRecord
  belongs_to :category
  has_many :comments
  validates :title, :content, :category_id, presence: true, length: {minimum: 5}
end
