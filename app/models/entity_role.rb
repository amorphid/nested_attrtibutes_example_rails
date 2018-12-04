class EntityRole < ApplicationRecord
  belongs_to :entity
  belongs_to :notice

  validates_presence_of :entity
  validates_presence_of :notice

  accepts_nested_attributes_for :entity
end
