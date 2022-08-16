class Pet < ApplicationRecord
  SPECIES = %w[bird cat dog turtle snake]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
