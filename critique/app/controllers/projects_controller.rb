class ProjectsController < ApplicationController
  def index
	  @projects = project.find(:all)
    #TODO: use pagination gem
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
	  @project = Project.new
  end

  def create
	  @project = Project.new(project_params)
    if @project.save
      flash[:success] = "New project created"
	    redirect_to @project
    else
      render 'new'
    end
   end

  def edit
    @project = Project.find(params[:name])
  end

  def update
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  private
  def project_params
    params.require(:project).permit(:name, :category, :location, :description)
  end
end
