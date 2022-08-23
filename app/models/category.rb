class Category < ApplicationRecord
  has_many :genres
  has_many :licenses
end
