class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pictures, dependent: :destroy
  has_many :comments, as: :user_comment, dependent: :destroy
  mount_uploader :image, ImageUploader
end
