ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :title, :description, :photo #, :, :of, :attributes, :on, :model
actions :all
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form title: 'Novo post' do |f|
 f.inputs 'CRIAR NOVO POST' do
    f.input :title
    f.input :description
    f.input :photo, as: :file
    actions
  end
end

index do
    
    column :title
    column :photo_file_name
    column :photo_content_type
    column :photo_file_size
    column :photo_updated_at
    column :admin_user_id
    column :created_at, null: false
    column :updated_at, null: false
end
# controller do
#     # This code is evaluated within the controller class


#     def destroy
# 	    redirect_to root_url, notice: "Artigo removido!"
# 	    @post = Post.find params[:id]
# 	    @post.destroy
# 	end

# end

end
