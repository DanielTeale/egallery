class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :user_comment, polymorphic: true
  has_many :comments, as: :user_comment
end
