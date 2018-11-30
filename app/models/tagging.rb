class Tagging < ApplicationRecord
  belongs_to :selectable, polymorphic: true
  belongs_to :tag
end
