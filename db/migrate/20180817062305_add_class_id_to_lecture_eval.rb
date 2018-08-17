class AddClassIdToLectureEval < ActiveRecord::Migration
  def change
    add_column :lecture_evals, :class_id, :integer
  end
end
