class RemoveUserFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :user_id
  end
end
