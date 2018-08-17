class AddClassIdToLectureEvalEwha < ActiveRecord::Migration
  def change
    add_column :lecture_eval_ewhas, :class_id, :integer
  end
end
