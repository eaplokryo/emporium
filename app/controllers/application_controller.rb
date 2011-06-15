class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def default_url_options(options = {})
    { :locale => I18n.locale }
  end

  private

  def set_locale
    I18n.locale = params[:locale] if params.member? 'locale' and I18n.available_locales.member? params[:locale].to_sym || I18n.default_locale
  end
end
