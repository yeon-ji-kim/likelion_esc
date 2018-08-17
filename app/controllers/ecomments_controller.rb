class EcommentsController < ApplicationController
  def create
    @post = PostCommentEwha.new
    @post.content = params[:content]
    @post.email = current_user.email
    @post.nickname = current_user.nickname
    @post.post_ewha_id= params[:post_ewha_id]
    @post.save
    
    redirect_to :back
  end

  def destroy
    destroy = PostCommentEwha.find(params[:ecomments_id])
    destroy.destroy
    
    redirect_to :back
  end

  def edit
    @post = PostEwha.find(params[:post_ewha_id])
    @comment = PostCommentEwha.find(params[:ecomments_id])
  end

  def update
    @post = PostEwha.find(params[:post_ewha_id])
    update_comment = PostCommentEwha.find(params[:ecomments_id])
    update_comment.content = params[:content]
    update_comment.save
    
    redirect_to "/home/detail_ewha/#{params[:post_ewha_id]}"
  end
end
