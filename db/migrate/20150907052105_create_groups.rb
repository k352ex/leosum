class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|

      t.string :name
      t.string :content
      t.string :image
      
      t.integer :current_member
      t.integer :max_member

      t.timestamps null: false
    end
  end
end
