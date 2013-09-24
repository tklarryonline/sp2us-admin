ActiveAdmin.register Room do
  config.sort_order = "name_asc"
  menu :priority => 3

  index do
    selectable_column
    column :name
    #column "Size (in m<sup>2</sup>)".html_safe, :size
    column "Capacity<br/>(num. of people)".html_safe, :capacity
    column :price_per_hour
    column "" do |resource|
      links = ''.html_safe
      links += link_to "View", resource_path(resource), :class => "btn btn-default"
      links += '   '.html_safe
      links += link_to "Edit", edit_resource_path(resource), :class => "btn btn-primary"
      links += '   '.html_safe
      links += link_to "Delete", resource_path(resource),
                       :method => :delete, :confirm => "Are you sure you want to delete this?",
                       :class  => "btn btn-danger"
    end
  end

  form :partial => "form"

  controller do
    def permitted_params
      params.permit!
    end
  end
end
