class Project < ActiveRecord::Base
  has_many :funding_levels, dependent: :nullify

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end
