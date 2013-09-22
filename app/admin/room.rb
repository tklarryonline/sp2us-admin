ActiveAdmin.register Room do
  menu :priority => 3

  index do
    selectable_column
    id_column
    column :name
    column "Size (in m2)", :size
    column :description
    column :price_per_hour
    column "" do |resource|
      links = ''.html_safe
      links += link_to "View", resource_path(resource), :class => "btn btn-default"
      links += '   '.html_safe
      links += link_to "Edit", edit_resource_path(resource), :class => "btn btn-primary"
      links += '   '.html_safe
      links += link_to "Delete", resource_path(resource),
                       :method => :delete, :confirm => "Are you sure to delete this?",
                       :class => "btn btn-danger"
    end
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
