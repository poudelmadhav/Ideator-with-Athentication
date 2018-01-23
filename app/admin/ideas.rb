ActiveAdmin.register Idea do
	menu priority: 3
	permit_params :user, :description, :author, :user_id
	
	filter :user
	filter :photo
	filter :description

	index do
	  selectable_column
	  column :description
	  column :user, :sortable => :user
	  column :author
	  actions
	end
end