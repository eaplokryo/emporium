class WelcomeController < ApplicationController
  def welcome
    @langs = I18n.available_locales
    @lang = I18n.locale
    @def_lang = I18n.default_locale
  end
end
