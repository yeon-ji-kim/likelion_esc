class EcommentController < ApplicationController
    def ewrite
            @post = PostEcomment.new
            @eval = lecture_ewha_eval.new
            @post.lecture_ewha_eval.content = params[:content]
            @post.email = current_user.email
            @post.nickname = current_user.nickname
            @post.post_id= params[:post_id]
            @post.save
            @eval.written =1
            redirect_to :back
    end
     def star_create
        @post.rating = params[:score]
        respond_tp do |format|
        if @post.saving
            format.html {redirect_to @post, notice: '강의 평가가 성공적으로 등록되었습니다.'}
            format.json { render :show, status: :created, location: @post }
        else
            format.html {render :new }
            format.json { render json: @post.errors, status: :unprocessable_entity }
        end
         end
    end

    def star_update
        respond_to do |format|
            if @post.update(post_params)
                @post.update(rating: params[:score])
                format.html { redirect_to @post, notice: '강의 평가가 성공적으로 등록되었습니다.'}
                format.json { render :show, status: :ok, location: @post }
            else
                format.html { render :edit }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end 
    
    def search
        @posts = LectureEvalEwha.search do
            keywords params[:query]
        end.results
        
        respond_to do |format|
            format.html { render :action => "index" }
            format.xml { render :xml => @posts }
        end
    end
end
