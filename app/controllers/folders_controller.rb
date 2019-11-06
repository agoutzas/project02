class FoldersController < ApplicationController

  before_action :check_for_login, :only => [:create, :edit, :update, :destroy, :show]

  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    folder = Folder.create folder_params
    resource = Resource.find :id => params[:resources_ids]
    folder.resources << resource
    @current_user.folders << folder
    redirect_to folders_path
  end

  def edit
  @folder = Folder.find params[:id]
  end

  def update
    folder = Folder.find params[:id]
    folder.update folder_params
    redirect_to folder
  end

  def show
    @folder = Folder.find params[:id]
  end

  def destroy
    folder = Folder.find params[:id]
    folder.destroy
    redirect_to folders_path
  end


  private

  def folder_params
    params.require(:folder).permit(:name, :resource_ids)
  end

end
