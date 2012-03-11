class SessionsController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
    user = User.find_or_create_from_omni_auth(omni_auth)

   if user.errors.any?
      flash[:error] = user.errors.full_messages.join(", ")
    else
      self.current_user = user
    end

    redirect_back_or_default root_path
  end

  def failure
    flash[:error] = "There was a problem logging in. Please try again"
    self.current_user = nil
    redirect_to root_url
  end

  def destroy
    self.current_user = nil
    redirect_to root_url
  end

  private

  def omni_auth
    request.env['omniauth.auth']
  end
end
