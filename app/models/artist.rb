class Artist < ApplicationRecord
  has_many :paintings
  has_many :comments, through: :paintings
end
