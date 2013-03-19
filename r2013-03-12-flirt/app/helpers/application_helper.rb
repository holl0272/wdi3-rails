module ApplicationHelper
  def login_nav
    nav = ""

    if @subscriber.present? && @subscriber.has_subscription?
      nav += "<li>#{link_to('Profile', '#', :class => 'button tiny radius')}</li>"
    end

    if @auth.present?
      nav += "<li>#{link_to(@auth.username + ' | Logout', '/login', :method => :delete, :remote => true, :id => 'logout_btn', :class => 'button radius tiny alert')}</li>"
    end

    nav
  end
end