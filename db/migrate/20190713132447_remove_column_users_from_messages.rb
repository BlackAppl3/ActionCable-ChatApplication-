class RemoveColumnUsersFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :users_id
  end
end
