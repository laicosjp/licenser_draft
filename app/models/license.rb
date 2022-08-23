class License < ApplicationRecord
  has_many :got_licenses
  has_many :target_licenses

  belongs_to :category
  belongs_to :genre
end
