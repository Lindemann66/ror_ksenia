class Mark < ApplicationRecord
  belongs_to :post

  validates :mark, presence: true
  validates_numericality_of :mark, only_integer: true, :greater_than => 0, :less_than => 6

end
