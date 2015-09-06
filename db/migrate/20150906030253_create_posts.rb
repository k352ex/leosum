class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title
      t.string :artist
      t.string :image
      t.text   :context



      t.timestamps null: false
    end
  end
end
