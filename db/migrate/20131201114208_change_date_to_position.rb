class ChangeDateToPosition < ActiveRecord::Migration
  def change
    remove_column :projects, :date
    add_column    :projects, :position, :integer
  end
end
