class CommentsController < ApplicationController
    def new
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new

    end
            
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)

        redirect_to city_post_path(@post)
    end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
