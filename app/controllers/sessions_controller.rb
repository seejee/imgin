class SessionsController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
    user = User.find_or_create_from_omni_auth(omni_auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Login succeeded"
  end

  def failure
    redirect_to root_url, :notice => "Login failure"
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_url, :notice => "Logged out"
  end

  private

  def omni_auth
    request.env['omniauth.auth']
  end
end
