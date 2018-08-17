class AddPostEwhaIdToPostCommentEwha < ActiveRecord::Migration
  def change
    add_column :post_comment_ewhas, :post_ewha_id, :integer
  end
end
