class CreateClassSmLinks < ActiveRecord::Migration
  def change
    create_table :class_sm_links do |t|
        t.integer :smclass_id
        t.integer :user_id
      t.timestamps null: false
    end
  end
end
