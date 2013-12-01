class ProjectsController < ApplicationController

  def index
    @projects = Project.order("position DESC")
  end

  def show
    unless Project.where(common_name: params[:name]) != 1
      flash[:error] = "Une erreur est survenue. Si ce probleme persiste, merci de me contacter."
      redirect_to action: 'index' and return
    end
    @project = Project.where(common_name: params[:name]).first
    @img_col_width = @project.image_column_width
  end

end