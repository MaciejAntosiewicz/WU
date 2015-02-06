module ApplicationHelper

 def is_active?(link_path)
  current_page?(link_path) ? "btn btn-default btn-sm btn-nav active" : "btn btn-default btn-sm btn-nav"
 end

end