module LayoutsHelper
  def nav_lists
    [
      { title: 'Home', path: root_path, unique_class: (request.path == '/' ? 'text-primary' : 'hover:text-primary').to_s, active: true },
      { title: 'Logout', path: destroy_account_session_path, method: 'delete', active: account_signed_in? },
      { title: 'Login', path: new_account_session_path, active: !account_signed_in? }
    ]
  end
end
