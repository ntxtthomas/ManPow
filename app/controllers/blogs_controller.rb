class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    
  end

  def destroy
  end
end