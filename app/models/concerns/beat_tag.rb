module BeatTag

  def grouped_tags
    self.tags.group_by(&:type)
  end

  def era_ids
    self.grouped_tags["Era"].pluck(:id)
  end

  def genre_ids
    self.grouped_tags["Genre"].pluck(:id)
  end

  def occasion_ids
    self.grouped_tags["Occasion"].pluck(:id)
  end

  def subtag_ids
    self.grouped_tags["Subtag"].pluck(:id)
  end

end
