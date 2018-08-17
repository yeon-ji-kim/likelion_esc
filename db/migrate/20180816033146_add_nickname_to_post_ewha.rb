class AddNicknameToPostEwha < ActiveRecord::Migration
  def change
    add_column :post_ewhas, :nickname, :string
  end
end
