class ImagesController < ApplicationController

  before_action :find_image, except: [:new, :create]

  def new
    @project = Project.find(params[:project_id])
    @image = Image.new
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @image= Image.new(image_params)
    @image.project = params[:project_id]
    if @image.save
      flash[:notice] = "Une photo a été ajoutée à votre projet"

    else
      flash[:danger] = "Une erreur est survenue, réessayez"
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def image_params
    params.require(:image).permit(:photo, :photo_cache)
  end

  def find_image
    @image = Image.find(params[:id])
  end

end
