class AddStarToLectureEvalEwha < ActiveRecord::Migration
  def change
    add_column :lecture_eval_ewhas, :star, :integer
  end
end
