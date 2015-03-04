class Pledge < ActiveRecord::Base
  belongs_to :funding_level
  
  validates :funding_level, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :amount, presence: true, numericality: {
            only_integer: true,
            greater_than_or_equal_to: 0
          }

before_save :set_amount

end
