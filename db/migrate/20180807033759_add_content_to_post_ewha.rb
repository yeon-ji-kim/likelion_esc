class AddContentToPostEwha < ActiveRecord::Migration
  def change
    add_column :post_ewhas, :content, :text
  end
end
