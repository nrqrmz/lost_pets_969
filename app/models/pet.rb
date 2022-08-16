require 'date'

class Pet < ApplicationRecord
  SPECIES = %w[bird cat dog turtle snake]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    days = (Date.today - found_on).to_i
    "#{name} was found #{days} days ago"
  end
end
