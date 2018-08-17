class CreatePostCommentEwhas < ActiveRecord::Migration
  def change
    create_table :post_comment_ewhas do |t|

      t.timestamps null: false
    end
  end
end
