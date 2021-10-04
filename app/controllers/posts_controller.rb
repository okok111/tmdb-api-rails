class PostsController < ApplicationController
before_action :authenticate_user!

  def index
    @posts = Post.all
    @tags = Tag.all
    @posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
  end

  def new
    @post = Post.new
    movie_id = params[:movie_id]
    url = URI.encode('https://api.themoviedb.org/3/movie/'+ movie_id +'?api_key=150363785ff664359067f5e9ccbe5883&language=ja')
    @movie = JSON.parse(Net::HTTP.get(URI.parse(url)))
  end

  def create
    post = Post.new(post_params)

    post.user_id = current_user.id

    if post.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end


  def show
    @post = Post.find(params[:id])
    
  end 

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end


  private
  def post_params
    params.require(:post).permit(:title, :year, :genre, :description, :image, :hoken, tag_ids: [] )
  end
end
