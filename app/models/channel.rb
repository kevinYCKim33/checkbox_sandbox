class Channel < ApplicationRecord
  has_many :taggings, as: :selectable
end
