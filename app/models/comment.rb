class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :user_comment, polymorphic: true
end
