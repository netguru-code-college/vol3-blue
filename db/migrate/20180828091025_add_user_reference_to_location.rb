class AddUserReferenceToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :user, index: true
  end
end
