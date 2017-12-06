class RemoveUsernameFromAdmin < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :username, :admin
  end
end
