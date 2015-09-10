class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :title
      t.string :artist
      t.string :image
      t.text   :context

      # User는 여러개의 게시물을 가진다.
      t.integer :user_id


      t.timestamps null: false
    end
  end
end
