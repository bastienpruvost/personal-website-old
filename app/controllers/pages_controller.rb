class PagesController < ApplicationController

  def index
    @projects = Project.where('id != 1').limit(4).order("RANDOM()")
  end

end