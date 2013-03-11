module UsersHelper

def flash_messages
    return if flash.empty?
    str = ""
    str += "<ul>"
    flash.each do |key, value|
      str += "<li class='flash-message-#{key}'>#{value}</li>"
    end
    str += "</ul>"
    str.html_safe
end





=begin
def flash_messages
    return if flash.empty?

    content_tag(:ul, :id => 'flash-messages') do
      flash.collect do |type, message|
        content_tag(:li, message, :class => "flash-message #{type}")
      end.join("\n").html_safe
    end
  end
=end

end

