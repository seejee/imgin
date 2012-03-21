class DashboardController < ApplicationController
  def index
    @images = current_user.images
    @image  = Image.new
  end
end
