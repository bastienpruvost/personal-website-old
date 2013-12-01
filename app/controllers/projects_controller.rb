class ProjectsController < ApplicationController

  def index
    @projects = Project.order("position DESC")
  end

  def show
    @project = Project.where(common_name: params[:name]).first
    @img_col_width = @project.image_column_width
  end

end