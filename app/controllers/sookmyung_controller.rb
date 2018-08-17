class SookmyungController < ApplicationController
  def csvsaves
    csv_text = File.read('public/SookmyungCourse.csv', :headers => true)
    keys = ['courseno', 'title', 'year', 'instructor', 'timef', 'times', 'room']
    @save = CSV.parse(csv_text).map {|a| Hash[keys.zip(a)]}
    i=1
    while i < @save.length-1
      @lecture = Smclass.new
      @lecture.courseno = @save[i].to_a[0][1]
      @lecture.title = @save[i].to_a[1][1]
      @lecture.year = @save[i].to_a[2][1]
      @lecture.instructor = @save[i].to_a[3][1]
      @lecture.timef = @save[i].to_a[4][1]
      @lecture.times = @save[i].to_a[5][1]
      @lecture.room = @save[i].to_a[6][1]
      @lecture.save
      i = i + 1
    end
  end
end
