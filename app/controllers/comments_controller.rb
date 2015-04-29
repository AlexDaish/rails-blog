class CommentsController < ApplicationController
  
  def new
  	# find the post
    @post = Post.find(params[:post_id])
  	# Assign a new empty comment to @comment (<- comment variable)
    @comment = @post.comments.new
  end
    
  end

  def create
  	# find the post
    @post = Post.find(params[:post_id])
  	# Assign a new comment with form data to @comment
    @comment = @post.comments.new(comment_params)
  	# if it saves
    if @comment.save
      # flash success
      flash[:success] = "Thanks for commenting"
    # and redirect to show post
      redirect_to @post
    # else
      else
      flash[:error] = t(:error_msg)
  	# flash error
      render :new
    # render new
    end
  	
  end

  def edit
  	# find the post
    
  	# assign the comment to @comment
    
  end

  def update
  	# find the post
  	# assign the comment to @comment
  	# if it updates with DB data
  	# flash success
  	# and redirect to show post page
  	# else 
  	# flash error
  	# render new
  end

  def destroy
  	# find the post
  	# delete the comment
  	# redirect to show post
  end

  # whitelist data from the form
  private 
  def comment_params
    params.require(:comment).permit(:body, :commenter)
  end
end
