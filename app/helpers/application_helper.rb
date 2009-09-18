# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  # generates the flashes block
  def flashes
    content_tag :div, flash.collect{ |key, text|
      content_tag(:div, content_tag(:span, '', :class => :icon) + text, :class => key)
    }, :id => :flashes, :style => (flash.empty? ? 'display: none' : nil)
  end
end
