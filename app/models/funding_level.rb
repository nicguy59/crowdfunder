class FundingLevel < ActiveRecord::Base
  belongs_to :project
  has_many :pledges
  validates :amount, numericality: {:greater_than => 0}

end
