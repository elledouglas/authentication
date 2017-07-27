class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])

      flash[:notice] = ' Succeful! You are logeed in! '
      redirect_to_root_url

    else
      flast.now[:alert] = ' Try again!'
      render :new
    end
  end

  def destroy
  end
end