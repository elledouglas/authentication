class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])

      session [:user_id] = u.id

      flash[:notice] = ' Succeful! You are logeed in! '
      redirect_to_root_url

    else
      flash.now[:alert] = ' Try again!'
      render :new
    end
  end

  def destroy

    session[:user_id] = nil

flash[:notice] = "You're logged out"
redirect_to_root_url
    end
end
