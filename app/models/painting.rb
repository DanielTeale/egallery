class Painting < ApplicationRecord
  belongs_to :artist
  has_many :comments
end
