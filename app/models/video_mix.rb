class VideoMix < ApplicationRecord
  has_many :taggings, as: :selectable
  has_many :tags, through: :taggings
  # def genre_ids=(array)
  #   binding.pry
  # end
  # def tag_ids=(array)
  #   binding.pry
  #   # get all tags associated with this if any
  #   array.each do |num|
  #     tag = Tag.find(num)
  #     # context = tag.type
  #     Tagging.create(context: tag.type, tag_id: tag.id,  selectable: self )
  #   end
  #
  #   # find or create any tagging associations
  #
  #   # delete any tagging associations not brought in with a fresh set
  #
  # end

  # kmix.tag_ids = [4,5,3]

  # https://apidock.com/rails/ActiveRecord/Associations/CollectionAssociation/ids_writer
  

end
