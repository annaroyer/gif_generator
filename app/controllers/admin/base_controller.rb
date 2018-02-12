class Admin::BaseController
  before_action :require_admin

  def require_admin
    render file: "/public/404"
  end
end
