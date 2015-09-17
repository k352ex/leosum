class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|

      t.string  :title
      t.text    :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
