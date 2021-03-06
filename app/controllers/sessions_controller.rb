class SessionsController < ApplicationController
  def new
  end

def destroy 
  session[:user_id] = nil 
  flash[:notice]="You have been logged out."
  redirect_to '/blist/home'
end

def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/deals'
  else
    flash[:notice]="Invalid login credentials, please try again!!"
    redirect_to '/blist/home'
  end 
end
end
