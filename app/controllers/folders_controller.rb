class FoldersController < ApplicationController

  before_action :check_for_login, :only => [:create]

  def new
    @folder = folder.new
  end

  def create
    folder = folder.create mixtape_params
    @current_user.folders << mixtape
    redirect_to root_path
  end


  private

  def folder_params
    params.require(:folder).permit(:category)
  end

end
