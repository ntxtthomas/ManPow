class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:Email])
    if user && user.authenticate(params[:Password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end

end


# LogOff
#   def self.sweep(time = 1.hour)
#     if time.is_a?(String)
#       time = time.split.inject { |count, unit| count.to_i.send(unit) }
#     end
 
#     delete_all "updated_at < '#{time.ago.to_s(:db)}'"
#   end
# end

