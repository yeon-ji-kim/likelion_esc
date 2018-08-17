class AddPostIdToPostCommentEwha < ActiveRecord::Migration
  def change
    add_column :post_comment_ewhas, :post_id, :integer
  end
end
