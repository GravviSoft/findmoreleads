module ApplicationHelper
  #Returns a full title on a per page basis
  #Method with optional argument
  def full_title(page_title = ' ')
    base_title = "Find More Leads"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
