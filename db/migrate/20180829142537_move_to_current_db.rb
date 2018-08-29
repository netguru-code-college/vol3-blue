class MoveToCurrentDb < ActiveRecord::Migration[5.2]
  def change
    remove_reference :locations, :user
  end
end
