class ResourcesController < ApplicationController

  before_action :check_for_login  #, :only => [:index]
  before_action :check_for_teacher #, :only => [:create]


  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def edit
    @resource = Resource.find params[:id]
  end

  def update
    resource = Resource.find params[:id]
    resource.update resource_params
    redirect_to resource
  end

  def create
    @resource = Resource.create resource_params
    raise "hell"
    redirect_to resources_path
  end

  def show
    @resource = Resource.find params[:id]
  end

  def destroy
    resource = Resource.find params[:id]
    resource.destroy
    redirect_to resources_path
  end



  private

  def resource_params
    params.require(:resource).permit(:title, :kind)
  end

end
