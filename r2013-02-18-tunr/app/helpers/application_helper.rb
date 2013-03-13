module ApplicationHelper

  def is_admin
    @auth.present? && @auth.is_admin
  end

  def intellinav
    links = ""

    if @auth.present?

      if @auth.is_admin
        links += "<li>#{link_to("Show Users", users_path)}</li>"
      end

      links += "<li>#{link_to('Edit', edit_users_path)}</li>"
      links += "<li>#{link_to(@auth.name + ' - ' + number_to_currency(@auth.balance).to_s, login_path, :method => :delete, :confirm => "Are you sure you want to logout?")}</li>"
    else
      "<li>#{link_to('Create Account', new_user_path)}</li>" +
      "<li>#{link_to('Login', login_path)}</li>"
    end
  end

  def mixtape_nav
    links = ""
    @auth.mixtapes.each { |mixtape| links += "<li>#{link_to(mixtape.name, mixtape)}<li>" }
    links += "<li>#{link_to('Create New', new_mixtape_path)}</li>"
  end

  def album_nav
    links = ""
        @auth.albums.each { |album| links += "<li>#{link_to(album.name, album)}<li>" }
  end

end


