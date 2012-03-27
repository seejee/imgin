class ImagesController < ApplicationController
  def create
    current_user.images.create!(params[:image])
    redirect_to request.referrer
  end
end
