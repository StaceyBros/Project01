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
    redirect_to dropzone
  end

  def edit
    @dropzone = Dropzone.find params[:id]
  end

  def update
    dropzone = Dropzone.find params[:id]
    dropzone.update dropzone_params
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
