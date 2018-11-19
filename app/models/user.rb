class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :marks
  has_one :seo, as: :tagable

  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
end
