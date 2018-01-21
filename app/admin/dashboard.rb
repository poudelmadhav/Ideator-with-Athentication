ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent Users", :priority => 1 do
        table_for User.order("current_sign_in_at DESC").limit(5) do
            column :id
            column "Name", :name do |user|
                link_to user.name, [:admin, user]
            end
            column :email
            column :created_at
            column :last_sign_in_at
        end
    end

    section "Recent Ideas", :priority => 1 do
        table_for Idea.order("id DESC").limit(5) do
            column :id
            column "Name", :idea do |idea|
                link_to idea.user_name,  admin_user_path(idea.user_id)
            end
            column :description
        end
    end
  end # content
end
