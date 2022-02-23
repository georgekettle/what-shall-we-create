class PhotosController < ApplicationController
  before_action :find_cabin, only: [:new, :create]
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.cabin = @cabin
    if @photo.save
      redirect_to cabin_path(@cabin), notice: "Photo successfully posted"
    else
      render :new
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to cabin_path(@photo.cabin)
  end

  private

  def find_cabin
    @cabin = Cabin.find(params[:cabin_id])
  end

  def photo_params
    params.require(:photo).permit(:image, :user, :comment, :rating)
  end
end
