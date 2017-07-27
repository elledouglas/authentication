class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

  @user = User.new

  @user.email = params[:user][:email]
  @user.password = params[:user][:password]
  @user.password_confirmation = params[:user][:password_confirmation]

  if @user.save
    flash[:notice] = 'Account Succefully created'
    redirect_to_root_url
  else
    flash.now[:error] = 'Sorry Try Again'
    render :new
end

#current request you must use .now

#render flash.now
#redirect flash
end
