class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.string :location
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :users
  end
end