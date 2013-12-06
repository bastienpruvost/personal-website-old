class ProjectsController < ApplicationController

  def index
    @projects = Project.order("position DESC")
    @meta = { title: "Bastien Pruvost | Portfolio" }
  end

  def show
    if Project.where(common_name: params[:name]).count != 1
      flash[:error] = t "message.erreur"
      redirect_to action: 'index' and return
    end
    @project = Project.where(common_name: params[:name]).first
    @img_col_width = @project.image_column_width

    @meta = { title: "Bastien Pruvost | #{t "meta.projet"} #{@project.title}" }
  end

end