class AddPasswordUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :integer
  end
end
