class AddUserIdToRolesUsers < ActiveRecord::Migration
  def change
    add_column :roles_users, :user_id, :interger
  end
end
