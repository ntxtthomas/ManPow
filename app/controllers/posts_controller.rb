class PostsController < ApplicationController

  def create
    post = Post.new(title: params[:title], content: params[:content], blog_id: params[:blog_id], user_id: session[:user_id])
    if post.save
      flash[:success] = "Post created!"
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = post.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to :back
  end
end