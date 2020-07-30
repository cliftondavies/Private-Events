module ApplicationHelper
  def top_links
    if signed_in?
      (link_to "Welcome,  #{current_user.name}", root_path) +
        (link_to 'Sign Out', session_path, method: :delete)
    else
      (link_to 'Sign In', new_session_path) +
        (link_to 'Sign Up', new_user_path)
    end
  end
end
