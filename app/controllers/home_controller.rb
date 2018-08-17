class HomeController < ApplicationController
  
 require 'csv'

  def csvsave
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

  def show
    #@posts = Post.all
    @posts = Post.page params[:page]
    #@posts = Post.where(post_id: params[:post_id]).page params[:page]
    #@변수 = LectureEval.all
  end

  def start
  end
  
  #def show_user_post
   # @check = Post.find(params[:email])
    #if @check == current_user.email
     # @posts = @check
    #end    
  #end

  
  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.image = params[:image]
    @post.email = current_user.email
    @post.nickname = current_user.nickname
    
    @post.save
    redirect_to '/home/show'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    #authorize post, :update?
    post.destroy
    redirect_to '/home/show'
  end

  def edit
    @post = Post.find(params[:post_id])
    #authorize @post,:update?
  end
  
  def update
    post =  Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    
    redirect_to '/home/show'
  end
  
  def detail
    @post = Post.find(params[:post_id])
  end
  
  def show_ewha
    @posts = PostEwha.page params[:page]
  end
  
  def create_ewha
    @post = PostEwha.new
    @post.title = params[:post_ewha_title]
    @post.content = params[:post_ewha_content]
    @post.image = params[:image]
    @post.email = current_user.email
    @post.nickname = current_user.nickname
    @post.save 
    redirect_to '/home/show_ewha'
  end
  
  def destroy_ewha
    post = PostEwha.find(params[:post_ewha_id])
    #authorize post, :update?
    post.destroy
    redirect_to '/home/show_ewha'
  end

  def edit_ewha
    @post = PostEwha.find(params[:post_ewha_id])
    #authorize @post,:update?
  end
  
  def update_ewha
    post =  PostEwha.find(params[:post_ewha_id])
    post.title = params[:post_ewha_title]
    post.content = params[:post_ewha_content]
    post.save
    
    redirect_to '/home/show_ewha'
  end
  
  def detail_ewha
    @post = PostEwha.find(params[:post_ewha_id])
    @postcomments = PostCommentEwha.all
  end
  
  def lecturecomment_ewha
    @Electures = LectureEvalEwha.all
    redirect_to '/home/lecturecomment_ewha'
  end
  
  def lecturecomment_sm
     @Slectures = LectureEval.all
   redirect_to '/home/lecturecomment_sm'
  end
  
  
end
