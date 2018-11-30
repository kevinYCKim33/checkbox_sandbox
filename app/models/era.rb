class Era < Tag
  has_many :subtags, as: :subtaggable
end

# https://apidock.com/rails/ActiveRecord/Associations/CollectionAssociation/ids_writer
