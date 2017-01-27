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

  def show
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])
  end

  def edit
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])
  end

  def update
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to city_path(@city)
    else
      render 'edit'
    end
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
