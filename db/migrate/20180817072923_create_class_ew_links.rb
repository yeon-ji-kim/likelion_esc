class CreateClassEwLinks < ActiveRecord::Migration
  def change
    create_table :class_ew_links do |t|
        t.integer :ewhaclass_id
        t.integer :user_id
      t.timestamps null: false
    end
  end
end
