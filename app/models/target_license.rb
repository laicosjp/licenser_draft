class TargetLicense < ApplicationRecord
  belongs_to :account
  belongs_to :license
end
