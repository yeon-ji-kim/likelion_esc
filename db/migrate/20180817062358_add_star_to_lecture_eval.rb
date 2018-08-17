class AddStarToLectureEval < ActiveRecord::Migration
  def change
    add_column :lecture_evals, :star, :integer
  end
end
