ActiveAdmin.register Room do

  index do
    selectable_column
    id_column
    column :name
    column "Size (in m2)", :size
    column :description
    column :price_per_hour
    default_actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
