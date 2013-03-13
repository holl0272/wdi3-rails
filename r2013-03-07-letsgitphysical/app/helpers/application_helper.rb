module ApplicationHelper
  def intellinav
    links = ""
    if @auth.present?

      links += "<li>#{link_to('List Users', users_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Exercises', exercises_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to(@auth.email, login_path, :method => :delete, :confirm => "Are you sure you want to logout?")}</li>"
    else
      links += "<li>#{link_to('Create User', new_user_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Sign In', login_path)}</li>"
    end
  end
end
