class Person < ApplicationRecord
  belongs_to :role
  belongs_to :seniority
  has_many :person_tags
  has_many :tags, through: :person_tags
end
