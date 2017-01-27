class CommentsController < ApplicationController
    def new
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new
        puts '@post here is #{@post.id}'

    end
            
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:body])
        
        if @comment.save 
        redirect_to '/'
        end
    end

    def show

    end

    def destroy

    end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
