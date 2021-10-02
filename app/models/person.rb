class Person < ApplicationRecord
  belongs_to :role
  belongs_to :seniority
  has_many :person_tags
  has_many :tags, through: :person_tags

  def all_tags=(ids)
    self.tags = Tag.where(id: ids.select(&:present?))
  end

  def all_tags
    tags.map(&:id)
  end
end
