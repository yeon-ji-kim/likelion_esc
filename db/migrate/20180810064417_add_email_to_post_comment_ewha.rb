class AddEmailToPostCommentEwha < ActiveRecord::Migration
  def change
    add_column :post_comment_ewhas, :email, :string
  end
end
