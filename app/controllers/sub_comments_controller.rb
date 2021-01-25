class SubCommentsController < ApplicationController

  before_action :set_post

  def create
    sub_comment = @post.sub_comments.create! sub_comments_params
    SubCommentsMailer.submitted(sub_comment).deliver_later
    SubCommentsChannel.broadcast(sub_comment)


    redirect_to @post
  end
  private
  def set_post
    @post = Post.find(params[:post_id])
  end
  def sub_comments_params
    params.required(:sub_comment).permit(:body)
  end
end
