class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { maximum: 300, minimum: 5 }
  validates :title, uniqueness: true

  validates :body, presence: true
  validates :body, length: { minimum: 50 }
end
