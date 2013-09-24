ActiveAdmin.register AdminUser, :as => "Managers" do
  config.filters = false
  config.sort_order = "id_asc"
  menu :priority => 1

  index do
    selectable_column
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column "" do |resource|
      links = ''.html_safe
      links += link_to "View", resource_path(resource), :class => "btn btn-default"
      links += '&nbsp;&nbsp;'.html_safe
      links += link_to "Edit", edit_resource_path(resource), :class => "btn btn-primary"
      links += '&nbsp;&nbsp;'.html_safe
      links += link_to "Delete", resource_path(resource),
                       :method => :delete, :confirm => "Are you sure you want to delete this?",
                       :class => "btn btn-danger"
    end
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  #form :partial => "form"

  controller do
    def permitted_params
      params.permit!
    end
  end
end
