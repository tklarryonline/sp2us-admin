module ActiveAdmin
  class BaseController
    helper ActiveAdminHelper
    def determine_active_admin_layout
      'admin/active_admin_reskin'
    end
  end
end
