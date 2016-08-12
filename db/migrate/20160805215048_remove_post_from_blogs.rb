class RemovePostFromBlogs < ActiveRecord::Migration
  def change
   # remove_reference :blogs, :post, index: true, foreign_key: true
  end
end
