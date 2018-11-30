class Channel < ApplicationRecord
  has_many :taggings, as: :selectable
  has_many :tags, through: :taggings

  has_many :subtaggings, as: :subtaggable
  has_many :subtags, through: :subtaggings
  
end
