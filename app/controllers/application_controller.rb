class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    redirect_to("/fr"+request.fullpath, status: 302) and return unless params[:locale]
    I18n.locale = params[:locale]
    @flag = (I18n.locale == :en) ? "fr" : "en"
    @url_translated = request.fullpath.gsub(/^\/#{I18n.locale}/, "/"+@flag)
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end

end
