module ApplicationHelper
  def intellinav
    links = ""
    if @auth.present?

      links += "<li>#{link_to('List Users', users_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Stocks', stocks_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to(@auth.email + ' | ' + number_to_currency(@auth.cash_balance).to_s, login_path, :method => :delete, :confirm => "Are you sure you want to logout?")}</li>"
    else
      links += "<li>#{link_to('Create User', new_user_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Sign In', login_path)}</li>"
    end
  end
end