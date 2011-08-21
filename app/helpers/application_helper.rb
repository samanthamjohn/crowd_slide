module ApplicationHelper
  def photo_title(photo)
    html = []
    html << content_tag(:em) do
      "<a href=" +  "'http://500px.com/photo/#{photo[:photo_id]}'>" +
      truncate(photo[:name], :length => 25) + 
      "</a>"
    end
    html << '<br />'
    html << "<a href=" + "'http://500px.com/#{photo[:username]}'>" +
      photo[:photographer] +
      "</a>"
    html.join(' ').html_safe
  end
end
