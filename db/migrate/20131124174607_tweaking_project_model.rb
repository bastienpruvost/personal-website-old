class TweakingProjectModel < ActiveRecord::Migration
  def change
    rename_column :projects, :image_url, :image
    add_column :projects, :image_thumbnail, :text
    add_column :projects, :date, :datetime
  end
end
