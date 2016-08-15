class UsersController < ApplicationController
  def index
  end

  def create
    user = User.new(name: params[:Name], email: params[:Email], password: params[:Password], password_confirmation: params[:Password_Confirmation], blog_title: params[:blog_title])
    if user.save
      session[:user_id] = user.id
      flash[:success] = "User created!"
      Blog.create(title: params[:blog_title], user_id: session[:user_id])
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @post = User.find(params[:id]).posts.all
  end
end



