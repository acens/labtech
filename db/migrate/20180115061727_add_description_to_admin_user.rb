class AddDescriptionToAdminUser < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :description, :text
  end
end
