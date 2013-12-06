class ProjectsController < ApplicationController

  def index
    @projects = Project.order("position DESC")
  end

  def show
    if Project.where(common_name: params[:name]).count != 1
      flash[:error] = t "message.erreur"
      redirect_to action: 'index' and return
    end
    @project = Project.where(common_name: params[:name]).first
    @img_col_width = @project.image_column_width
  end

end