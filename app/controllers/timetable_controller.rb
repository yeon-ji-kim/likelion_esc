class TimetableController < ApplicationController
  def index
    @search = Ewhaclass.search do
      fulltext params[:search]
    end
    @courses = @search.results
  end

  def create
    @course = ClassEwLink.new
    @course.ewhaclasses << Ewhaclass.find(params[:ewhaclass_id])
    @course.save
    
    redirect_to '/timetable/index'
  end
  
  def search
    #@lectures = LectureEwha.search do
      #keywords params[:query]
    #end.results
    
    #respond_to do |format|
      #format.html { render :action => "index" }
      #format.xml { render :xml => @lectures }
    #end
  end
end
