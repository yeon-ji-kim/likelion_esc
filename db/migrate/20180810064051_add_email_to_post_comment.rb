class AddEmailToPostComment < ActiveRecord::Migration
  def change
    add_column :post_comments, :email, :string
  end
end
