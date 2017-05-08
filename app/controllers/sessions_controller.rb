class SessionsController < ApplicationController

  def new
  end

  def create
    session = params[:session]
    email = session[:email].downcase
    password = session[:password]
    user = User.find_by(email: email)
    if user && user.authenticate(password)
      log_in user
      redirect_to user
    else
      flash.now[:notice] = "You have entered an incorrect email or password."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
