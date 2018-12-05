class Channel < ApplicationRecord
  has_many :taggings, as: :selectable
  has_many :tags, through: :taggings

  include BeatTag



  def mixes
    binding.pry
    # USE CASE #1: BAR OWNER CHOSE GENRES AND ERAS BUT LEFT OCCASION AND SUBTAGS EMPTY

    # USE CASE #2: BAR OWNER CHOSE GENRES BUT LEFT ERAS, OCCASION, AND SUBTAGS EMPTY

    # USE CASE #3: BAR OWNER CHOSE ERAS BUT LEFT GENRES, OCCASION, AND SUBTAGS EMPTY

    # USE CASE #4: BAR OWNER CHOSE EITHER OCCASION OR SUBTAGS BUT LEFT ERAS AND GENRES EMPTY

    # USE CASE #5: BAR OWNER CHOSE EVERYTHING! (GENRES, ERAS, OCCASIONS, SUBTAGS)
    # VideoMix.where(tag_ids: c.tag_ids)
    VideoMix.all.each do |video_mix|
      if video_mix.tag_ids == self.tag_ids

      end
    end

    # VideoMix.where()
  end
end
