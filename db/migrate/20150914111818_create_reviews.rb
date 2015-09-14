class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      # 리뷰
      t.string  :review

      # 리뷰를 작성한 아이디 
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
