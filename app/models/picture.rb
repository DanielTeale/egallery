class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :user_comments
  mount_uploader :image, ImageUploader
end
