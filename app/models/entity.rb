class Entity < ApplicationRecord
  has_many :entity_roles, inverse_of: :entity
  has_many :notices, through: :entity_roles
end
