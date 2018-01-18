ActiveAdmin.register Member do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :photo, :email
actions :all
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form title: 'Novo membro' do |f|
 f.inputs "Cadastrar Novo Membro" do
    f.input :name
    f.input :description
    f.input :photo, as: :file
    f.input :email
    actions 
  end
end



end
