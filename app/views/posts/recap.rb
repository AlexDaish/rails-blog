#strings are groups of characters
#a fundamental data structure: good for naming or being a message
"This is a string"

#a variable is a unit of data structure that can change. It a named location for objects (ie string, array or class etc)

name = "Tim"
[post] = Post.new
message = Person.say("Words")

#you can reference it later on
puts post #=> #<Post:Ox7eidhkjhgxcgjdk9d93
#you can overwrite a variable
post = "Hello World"

# A list of things is called an Array
#An array is indicated by [square brackets] 
things = ["my", :list, "of", Things.new]

# You can call each on an array
things.each do |thing|
	put thing
end

# Hashes are also a list
# But each item in the hash
# has two components
# a key and a value

{
	:key => "value",
	:color => "blue",
	:email => tim@steer.me,
	:post => Post.find(2),
	title: "Hello world"
}

# like an array but easier to access value
#hashes can also be nested

{
	:post => {
	:email => tim@steer.me,
	:post => Post.find(2),
	title: "Hello world"
	}
}

params = {
	:controller => "posts",
	:actions = "create",
	:id => 2
}

# A ruby class is for building objects
# A User class is for building user objects
# A Post class is for building blog post objects

# objects are just anything (stuff)

class Car
	def @color
end

# Classes are where domain specific behaviours are defined
# its where you put method/functions

class Animal
	def initialize
	def move
		@move = true
	end

	def breathe
	end

	def lame!
		@move = false

# it can inherit behaviours / code

class Dog < Animal
	def bark
		
	end
end

class Cat < Animal
	def meow
		puts "meow"
	end

# Classes are where domain specific behaviours are defined
# its where you put method/functions

dog = Dog.new #when I call, new initiaze is invoked
dog.move #= true
dog.lame! 
dog.move #= false
cat = cat.new
cat.move #= true
cat.lame
cat.move #= false

# We can check for truthinesss and falsiness

if true 
	#do stuff
else
	#do other stuff
end	

if post.author == "Tim" 
	#do stuff
	puts "this post was by Tim"
else
	#do other stuff
end	

# Better

if post.author.present?
	puts "this post was by #{post.author}"
else
	# do other stuff
	puts "there was no author"22
end



@posts = Post.all #if there where two posts
@posts.each #=> #<Enumerator: 0x024748dh38hd38hd3oih3kjdkn389>
@posts.each do
	# whatever happens in here happens twice
end	

@post.each do |post| # pipes insert the variable into the block
	#I have access to each post the local variable (just this block)
	post #=> #<Post:0x0dhdhhdh
	puts #=> #<Post:0x0dhdhhdh
	post.update(title:"Goodbye cruel world")
	post.save
end


# instance variables vs. local variables
# SCOPE

#post is local
posts.each do |post| do
	post #=> this works
	post #=> this works
	post #=> this works
	post #=> this works

end	 #its scope ends here

post #=> this doesn't works

class Post
	def instance_method
		post = Post.find(1)
		post #=> this works
		post #=> this works
		post #=> this works
		@post = Post.find(1)
	end
		post #=> this doesn't works
	def another_instance_method
		post #=> this doesn't works
		@post #=> this works
end

# explained again
class PostsController
	def index
		@post = Post.all #nope
		post = Post.all		#yes
	end

	def show
		post = Post.find(params[:id]) #nope
		@post = Post.find(params[:id]) #yes

	end
end

# @post is an instance that can be shared across method
# post is local and cannot
blogpost =Post.new
blogpost.instance_method #this works
blogpost.another_instance_method #undefined local


