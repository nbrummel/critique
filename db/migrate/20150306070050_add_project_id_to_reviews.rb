class AddProjectIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :project_id, :integer
    add_index :reviews, :project_id
  end
end
