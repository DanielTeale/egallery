class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :user_comment, dependent: :destroy
  mount_uploader :image, ImageUploader
end
