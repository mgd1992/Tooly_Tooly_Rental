class Category < ApplicationRecord
  has_many :tools
  has_one_attached :photo
end
