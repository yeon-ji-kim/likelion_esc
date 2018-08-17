class RemoveSchoolColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :school, :integer
  end
end
