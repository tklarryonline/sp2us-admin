ActiveAdmin.register AdminUser, :as => "Managers" do
  index do
    selectable_column
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
