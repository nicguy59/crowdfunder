class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description, null: false  

      t.timestamps null: false
    end
  end
end
