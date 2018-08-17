class AddContentToPostCommentEwha < ActiveRecord::Migration
  def change
    add_column :post_comment_ewhas, :content, :string
  end
end
