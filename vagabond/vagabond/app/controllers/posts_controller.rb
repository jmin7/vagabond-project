class PostsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @post = @city.posts.new
  end

  def create
    @city = City.find(params[:city_id])
    @post = @city.posts.create(post_params)

    redirect_to city_path(@city)
  end

  def destroy
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])
    @post.destroy
    redirect_to city_path(@city)
  end

  private
  def post_params
    params.require(:post).permit(:body, :title)
  end

end
