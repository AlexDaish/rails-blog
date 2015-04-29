class CommentsController < ApplicationController
  def new
  	# find the post
  	# Assign a new empty comment to @comment (<- comment variable)
  end

  def create
  	# find the post
  	# Assign a new comment with form data to @comment
  	# if it saves
  	# flash success
  	# and redirect to show post
  	# else
  	# flash error
  	# render new
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
end
