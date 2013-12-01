class RenameProjectAttr < ActiveRecord::Migration
  def change
    rename_column :projects, :description, :common_name
    rename_column :projects, :name, :title
  end
end
