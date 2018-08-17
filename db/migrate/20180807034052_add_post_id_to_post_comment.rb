class AddPostIdToPostComment < ActiveRecord::Migration
  def change
    add_column :post_comments, :post_id, :integer
  end
end
