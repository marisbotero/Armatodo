class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :tittle
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
