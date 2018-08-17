class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|

      t.timestamps null: false
    end
  end
end
