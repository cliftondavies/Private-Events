module ApplicationHelper
  def top_links
    if signed_in?
      (link_to "Welcome,  #{current_user.username}", root_path) + (link_to 'My Events', user_path(current_user)) +
        (link_to 'Sign Out', session_path(current_user), method: :delete)
    else
      (link_to 'Sign In', new_session_path) +
        (link_to 'Sign Up', new_user_path)
    end
  end
end
