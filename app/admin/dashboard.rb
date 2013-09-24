ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => "Dashboard"

  content :title => "What's going on" do

    columns do
      column :span => 3 do
        panel "Recently signed up" do
          render partial: "recent_users"
        end
      end

      column do
        panel "Useful links for Managers" do
          # TODO add useful links for Managers section here
        end
      end
    end
  end # content
end
