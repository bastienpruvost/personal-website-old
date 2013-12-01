class Project < ActiveRecord::Base

serialize :skills
serialize :image
serialize :image_thumbnail

  def image_column_width
    self.image ? self.image[:width] : 0
  end

end
