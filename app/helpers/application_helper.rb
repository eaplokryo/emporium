module ApplicationHelper
  def title
    I18n.t("app_name")
  end

  def language_switcher(options = {})
    opts = {:language_switcher_class => 'language_switcher', :language_current_class => 'language_current'}
    opts.merge! options
    content_tag :div, :class => opts[:language_switcher_class] do
      content_tag :ul do
        I18n.available_locales.sort.collect do |locale|
          concat(content_tag :li, language_link(locale), :class => (opts[:language_current_class] if language_current?(locale)))
        end
      end
    end
  end

  private

  def language_link(locale)
    link_to(image_tag("language/#{locale}.png", :alt => I18n.t(locale, :scope => "language")), :locale => locale)
  end

  def language_current?(locale)
    locale == I18n.locale
  end
end
