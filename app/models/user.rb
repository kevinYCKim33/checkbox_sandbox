class User < ApplicationRecord
  has_many :taggings, as: :selectable
  # has_many :tags, through: :taggings

  def genres
    self.taggings.where(context: "Genre")
  end

  def eras
    self.taggings.where(context: "Era")
  end


end
