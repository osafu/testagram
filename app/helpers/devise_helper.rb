module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    html = []
    html << content_tag(:div, class: 'error_messages') do
      content_tag(:ul) do
        resource.errors.full_messages.each do |error_message|
          concat content_tag(:li, error_message.to_s, class:'alert alert-danger')
        end
      end
    end

    safe_join html
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end
end
