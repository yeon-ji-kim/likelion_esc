class AddContentToPostComment < ActiveRecord::Migration
  def change
    add_column :post_comments, :content, :string
  end
end
