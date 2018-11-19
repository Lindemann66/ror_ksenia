class Seo < ApplicationRecord
  belongs_to :tagable, polymorphic: true
end
