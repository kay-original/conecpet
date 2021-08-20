class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :comment_text, presence: true, length: { maximum: 700 }
end
