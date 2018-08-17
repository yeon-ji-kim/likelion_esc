class AddImageToPostEwha < ActiveRecord::Migration
  def change
    add_column :post_ewhas, :image, :string
  end
end
