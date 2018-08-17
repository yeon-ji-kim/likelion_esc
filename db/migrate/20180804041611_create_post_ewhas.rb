class CreatePostEwhas < ActiveRecord::Migration
  def change
    create_table :post_ewhas do |t|

      t.timestamps null: false
    end
  end
end
