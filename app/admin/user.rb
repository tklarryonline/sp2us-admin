ActiveAdmin.register User, :as => "Customers" do
  config.sort_order = "id_asc"
  menu :priority => 2

  index do
    selectable_column
    column :name
    column :email
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

end
