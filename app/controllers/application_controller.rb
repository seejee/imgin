class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_required
  helper_method :current_user, :signed_in?

  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def signed_in?
    !!current_user
  end

  def login_path
    Rails.env.production? ? '/auth/github' : '/auth/developer'
  end

  def login_required
    unless signed_in?
      redirect_to login_path
      return true
    end
  end

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.try(:id)
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
