class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :competences
      t.string :image_url
      t.timestamps
    end
  end
end
