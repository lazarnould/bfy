class ProjectsController < ApplicationController

  before_action :find_project, only: [:edit, :update, :destroy, :show]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.images.nil?
      @project.pics = 0
    else
      @project.pics = @projects.images.count
    end

    if @project.save
      flash[:notice] = "Un projet a été ajouté sur la plateforme"
      redirect_to project_path(@project)
    else
      flash[:danger] = "Une erreur est survenue, réessayez"
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  def index
    @projects = Project.all
  end

  def show
  end

  private

  def contact_params
    params.require(:project).permit(:finished, :name, :city)
  end

  def find_project
    @project = Project.find(params[:id])
  end

end
