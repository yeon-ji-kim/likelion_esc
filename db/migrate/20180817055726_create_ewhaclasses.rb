class CreateEwhaclasses < ActiveRecord::Migration
  def change
    create_table :ewhaclasses do |t|
        t.string :courseno
        t.string :title
        t.string :year
        t.string :instructor
        t.string :timef
        t.string :times
        t.string :room
      t.timestamps null: false
    end
  end
end
