class AddRoleIdToRolesUsers < ActiveRecord::Migration
  def change
    add_column :roles_users, :role_id, :interger
  end
end
