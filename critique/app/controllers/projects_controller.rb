class ProjectsController < ApplicationController
  def index
	  @projects = project.find(:all)
    #TODO: use pagination gem
  end

  def show
    @projects = Project.find(params[:id])
  end

  def new
	  @project = project.new
  end

  def create
	  @project = project.new(params[:project])
    if @project.save
	    redirect_to :action => 'list'
    end
   end

  def edit
    @project = project.find(params[:name])
  end

  def update
  end

  def delete
    project.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
