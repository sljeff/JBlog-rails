class Category < ApplicationRecord
  has_many :articles
  def to_param
    slug
  end
end
