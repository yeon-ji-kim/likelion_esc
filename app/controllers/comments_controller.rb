class CommentsController < ApplicationController
  def create
    @post = PostComment.new
    @post.content = params[:content]
    @post.email = current_user.email
    @post.nickname = current_user.nickname
    @post.post_id= params[:post_id]
    @post.save
    
    redirect_to :back
  end

  def destroy
    destroy = PostComment.find(params[:comments_id])
    destroy.destroy
    
    redirect_to :back
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = PostComment.find(params[:comments_id])
  end

  def update
    @post = Post.find(params[:post_id])
    update_comment = PostComment.find(params[:comments_id])
    update_comment.content = params[:content]
    update_comment.save
    
    redirect_to "/home/detail/#{params[:post_id]}"
  end
end
