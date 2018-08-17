class RemovePostIdFromPostCommentEwha < ActiveRecord::Migration
  def change
    remove_column :post_comment_ewhas, :post_id, :integer
  end
end
