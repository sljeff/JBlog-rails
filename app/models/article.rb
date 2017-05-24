class Article < ApplicationRecord
  has_and_belongs_to_many :tags
  def to_param
    slug
  end
end
