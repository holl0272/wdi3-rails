module ApplicationHelper
  def login_nav
    if @auth.present?
      "<li>#{link_to(@auth.username, '/login', :method => :delete, :remote => true, :class => 'button radius')}</li>"
    end
  end
end