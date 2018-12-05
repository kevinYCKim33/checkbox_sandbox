class Tag < ApplicationRecord
  has_many :taggings

  # def self.genres
  #   where(type: 'Genre')
  # end
  #
  # def eras
  # end
  #
  # def occasions
  # end
  #
  # def subtags
  # end

end
