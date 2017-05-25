class Article < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :author
  belongs_to :category
  def to_param
    slug
  end
end
