class Pledge < ActiveRecord::Base
  belongs_to :funding_level
  validates :amount, numericality: {:greater_than => 0}

end
