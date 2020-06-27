class Tag < ApplicationRecord
  validates :value, presence: true
end
