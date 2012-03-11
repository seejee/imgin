class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_omni_auth(omni_auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Login succeeded"
  end

  def failure
    redirect_to root_url, :notice => "Login failure"
  end

  private

  def omni_auth
    request.env['omniauth.auth']
  end
end
