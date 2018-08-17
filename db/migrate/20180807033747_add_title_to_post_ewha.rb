class AddTitleToPostEwha < ActiveRecord::Migration
  def change
    add_column :post_ewhas, :title, :string
  end
end
