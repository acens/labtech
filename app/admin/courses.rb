ActiveAdmin.register Course do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :nome, :descricao, :data, :professor, :requisitos,:ementa
actions :all
#
# or
#
form title: 'Novo Curso' do |f|
 f.inputs "Cadastrar Novo Curso" do
    f.input :nome
    f.input :descricao
    f.date_select :data
    f.input :professor
    f.input :requisitos
    f.input :ementa
    actions
  end
end
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
