module ApplicationHelper

def validation_errors(obj)
  str = ""   
  if obj.errors.any?   
    str += "<ul>"
    obj.errors.full_messages.each do |message|
      str += "<li>#{message}</li>"
    end 
    str += "</ul>"
  end
return str.html_safe
end

end
