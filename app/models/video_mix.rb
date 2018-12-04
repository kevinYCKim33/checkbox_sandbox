class VideoMix < ApplicationRecord
  has_many :taggings, as: :selectable
  has_many :tags, through: :taggings

  include BeatTag
  # https://apidock.com/rails/ActiveRecord/Associations/CollectionAssociation/ids_writer

end


## @video_mix.tags(group_by)
