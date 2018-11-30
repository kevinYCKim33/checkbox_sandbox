class Subtag < ApplicationRecord
  belongs_to :tag
  has_many :subtaggings
end
