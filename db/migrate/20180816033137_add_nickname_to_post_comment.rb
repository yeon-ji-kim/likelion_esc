class AddNicknameToPostComment < ActiveRecord::Migration
  def change
    add_column :post_comments, :nickname, :string
  end
end
