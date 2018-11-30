class Genre < Tag
  has_many :subtags, as: :subtaggable

end
