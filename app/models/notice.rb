class Notice < ApplicationRecord
  has_many :entity_roles #, inverse_of: :notice
  has_many :entities, through: :entity_roles, inverse_of: :notice

  accepts_nested_attributes_for :entity_roles
end
