class DropzonesController < ApplicationController

  def index
    @dropzones = Dropzone.all
  end

  def show
    @dropzone = Dropzone.find params[:id]
  end

  def new
    @dropzone = Dropzone.new
  end

  def create
    dropzone = Dropzone.create dropzone_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        dropzone.image = req["public_id"]
        dropzone.save
      end
    redirect_to dropzone
  end

  def edit
    @dropzone = Dropzone.find params[:id]
  end

  def update
    dropzone = Dropzone.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      dropzone.image = req["public_id"]
    end
    dropzone.update dropzone_params
    dropzone.save
    redirect_to dropzone_path(dropzone.id)
  end

  def destroy
    dropzone = Dropzone.find params[:id]
    dropzone.destroy
    redirect_to dropzones_path
  end

  private
    def dropzone_params
      params.require(:dropzone).permit(:state, :dz_name, :image)
    end
end
