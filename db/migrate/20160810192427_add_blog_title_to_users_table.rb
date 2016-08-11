class AddBlogTitleToUsersTable < ActiveRecord::Migration
  def change
  	add_column :users, :blog_title, :string
  end
end
