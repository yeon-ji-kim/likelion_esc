class CreateUserEwhas < ActiveRecord::Migration
  def change
    create_table :user_ewhas do |t|

      t.timestamps null: false
    end
  end
end
