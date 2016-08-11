class RemoveBlogTitleFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :blog_title, :string
  end
end
