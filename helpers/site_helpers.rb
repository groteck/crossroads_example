module SiteHelpers

  def page_title
    title = "Knockout example with jquery address"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end
  
  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "static web site with knockout.js and jquery address plugin"
    end
    description
  end

end
