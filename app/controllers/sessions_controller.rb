class SessionsController < ApplicationController
  def create
    #raise request.env['omniauth.auth'].to_yaml
    redirect_to root_url, :notice => "Login succeeded"
  end

  def failure
    redirect_to root_url, :notice => "Login failure"
  end
end
