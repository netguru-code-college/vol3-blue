class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.string :weather_type
      t.string :operator, limit: 1
      t.decimal :value

      t.timestamps
    end
  end
end
