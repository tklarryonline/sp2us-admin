ActiveAdmin.register AdminUser, :as => "Managers" do
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
