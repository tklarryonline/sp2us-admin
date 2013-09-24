ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => "Dashboard"

  content :title => "Dashboard" do

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "Recently signed up" do
           ul do
             User.last(5).map do |user|
               li link_to user.name, admin_customer_path(user)
             end
           end
         end
       end

       column do
         panel "Info" do
           para "Welcome to ActiveAdmin."
         end
       end
     end
  end # content
end
