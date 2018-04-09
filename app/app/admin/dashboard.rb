ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "Recent OFFERS" do
           ul do
             Slug.order(Starts: :desc).limit(5).map do |slug|
               li link_to(slug.Title, admin_slug_path(slug))
             end
           end
         end
       end

       column do
         panel "Info" do
           para "Welcome to OFFERFLOWS."
         end
      end
    end
  end # content
end
