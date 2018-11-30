class Subtagging < ApplicationRecord
  belongs_to :subtaggable, polymorphic: true
  belongs_to :subtag
end
