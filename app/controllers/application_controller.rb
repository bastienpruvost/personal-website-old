class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = locale_from_url || locale_from_session || I18n.default_locale
    @flag = (I18n.locale == :en) ? "fr" : "en"
  end

  protected

  # When changing locale
  def locale_from_url
    if (params[:l].to_s.in?(["en", "fr"]))
      session[:l] = params[:l]
      return params[:l]
    end
  end

  def locale_from_session
    (session[:l].to_s.in?(["en", "fr"])) ? session[:l] : nil
  end
end
