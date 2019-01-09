class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :tags
      t.string :status
      t.integer :hours
      t.integer :story_points

      t.timestamps
    end
  end
end
