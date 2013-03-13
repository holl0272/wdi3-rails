module ApplicationHelper
  def intellinav
    if @auth.present?
      "<li>#{link_to(@auth.name, login_path, :method => :delete, :confirm => "Are you sure you want to logout?")}</li>"
    else
      "<li>#{link_to('Sign In', login_path)}</li>"
    end
  end
end
