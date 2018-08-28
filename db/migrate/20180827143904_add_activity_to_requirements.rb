class AddActivityToRequirements < ActiveRecord::Migration[5.2]
  def change
    add_reference :requirements, :activity, foreign_key: true
  end
end
