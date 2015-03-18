class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    
    redirect_to :back
  end
  
  def update
    @photo = Photo.find(params[:id])
    @photo.update(params.require(:photo).permit(:tags))
    
    redirect_to :back
  end
end
