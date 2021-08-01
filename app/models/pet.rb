class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :pet_image
end
