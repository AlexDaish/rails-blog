class PostsController < ApplicationController
  before_action :find_post, except: [:index, :new, :create]
  def index
  	#assign all posts to variable called @posts
  	@posts = Post.all
  	#render the index template (implicit once root "post#index" added to routes.rb)
  end

  def show
  	#assign 1 post to variable called @post (singular)
  	#@post = Post.find(params[:id])
  	#render show template (implicitly happening in the background)
  end



  def new
  	#assign a new empty post instance to @post
    @post = Post.new
  	#render new template (implicitly happening in background)
  	#
  end

  def create
  	#assign new post containing data from form
    @post = Post.create(post_params)
  	#if post save successful: redirect to the show page
    if @post.save 
      flash[:success] = "Successfully added a post."
      redirect_to @post
  	#else render new page again if it fails
    else
      flash[:error] = t(:error_msg)
      render :new
    end
  end

  def edit
  	#assign the post we want to edit to variable @post
    #@post = Post.find(params[:id])
  	#render edit template
  end

  def update
  	#assign the post we want to edit to @post
    #@post = Post.find(params[:id])
  	#if post saves redirect to show page
    if @post.save
      flash[:success] = "Your post was successful"
      redirect_to @post
    else 
      flash[:error] = t(:error_msg)
      render :edit
    end

  	#else render the form again
  end

  def destroy
  	#find then delete the post
    #post = Post.find(params[:id])
    #delete the post from the DB
    post.destroy
    #Say it worked
    flash[:success] = "#{post.title} was removed"
  	#redirect to the homepage
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit( :title, :publication, :published_at, :url, :author, :body, :pull_quote)
  end

  def find_post
      @post = Post.find(params[:id])
  end
end
