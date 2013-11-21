class RenameProjectAttrToEng < ActiveRecord::Migration
  def change
    rename_column :projects, :competences, :skills
  end
end
