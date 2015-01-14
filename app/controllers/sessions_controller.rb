class SessionsController < ApplicationController

  def new
    @user = User.new
  end
  
  def create #creates login session
    user = User.find_by(email: params[:user][:email])#authenticate
    
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id  #adds cookie
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def destroy #ends logout session
    session[:user_id] = nil
    redirect_to '/login'
  end  

end