class AddNicknameToPostCommentEwha < ActiveRecord::Migration
  def change
    add_column :post_comment_ewhas, :nickname, :string
  end
end
