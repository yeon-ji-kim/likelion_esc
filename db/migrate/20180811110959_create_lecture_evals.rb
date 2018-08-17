class CreateLectureEvals < ActiveRecord::Migration
  def change
    create_table :lecture_evals do |t|
      
      t.text :content #내용
      t.integer :lecture_id #해당하는 강의 번호
      t.string :user_id
      t.integer :written #작성했으면 0, 작성 안 했으면 1
      
      t.timestamps null: false
    end
  end
end
