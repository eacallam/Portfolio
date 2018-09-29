class Post < ApplicationRecord
  belongs_to :category
  validates :title, :content, :category_id, presence: true
  has_many :line_tems, inverse_of: order
end
