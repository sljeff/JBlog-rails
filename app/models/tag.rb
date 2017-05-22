class Tag < ApplicationRecord
  has_and_belongs_many :articles
end
