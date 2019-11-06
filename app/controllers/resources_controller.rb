class ResourcesController < ApplicationController

  before_action :check_for_login, :only => [:index]
  before_action :check_for_teacher, :only => [:create, :destroy, :edit]


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
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      resource.image = req["public_id"]
    end
      resource.update_attributes(resource_params)
      resource.save
      redirect_to resource_path
  end



  def create
    @resource = Resource.create resource_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @resource.image = req["public_id"]
      @resource.save
    end
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
    params.require(:resource).permit(:title, :kind, :image, :subject_id)
  end

end
