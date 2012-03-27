class HomeController < ApplicationController
  skip_before_filter :login_required

  def index
    redirect_to dashboard_path if signed_in?
  end
end
