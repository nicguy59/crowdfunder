class Project < ActiveRecord::Base
  has_many :funding_levels
  validates :name, presence: true

end
