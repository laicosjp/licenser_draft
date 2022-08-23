class Genre < ApplicationRecord
  has_many :licenses
  belongs_to :category
end
