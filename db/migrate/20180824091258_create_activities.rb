class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.integer :temp_min
      t.integer :temp_max
      t.boolean :rain

      t.timestamps
    end
  end
end
