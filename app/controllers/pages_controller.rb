class PagesController < ApplicationController

  def index
    @projects = Project.where('id != 1').limit(4).order("RANDOM()")
  end

  def blog
    @meta = { title: "Bastien Pruvost | Blog" }
  end

  def cv
    @meta = { title: "Bastien Pruvost | #{t "meta.cv"}" }
  end

  def ig2i
    @meta = { title: "Bastien Pruvost | IG2I" }
  end

end