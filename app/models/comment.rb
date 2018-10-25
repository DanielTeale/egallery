class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :user_comment, polymorphic: true
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy
end
