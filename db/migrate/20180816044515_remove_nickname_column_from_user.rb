class RemoveNicknameColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :nickname, :integer
  end
end
