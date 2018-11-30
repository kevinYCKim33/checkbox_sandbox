class Subtag < ApplicationRecord
  belongs_to :subtaggable, polymorphic: true
end
