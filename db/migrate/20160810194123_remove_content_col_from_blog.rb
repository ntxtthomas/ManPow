class RemoveContentColFromBlog < ActiveRecord::Migration
  def change
  	remove_column :blogs, :content
  end
end
