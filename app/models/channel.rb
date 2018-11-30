class Channel < ApplicationRecord
  has_many :taggings, as: :selectable
  has_many :tags, through: :taggings
end
