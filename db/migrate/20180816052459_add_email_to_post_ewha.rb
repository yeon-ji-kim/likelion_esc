class AddEmailToPostEwha < ActiveRecord::Migration
  def change
    add_column :post_ewhas, :email, :string
  end
end
